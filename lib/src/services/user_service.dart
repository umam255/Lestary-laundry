part of 'services.dart';

class UserService {
  //Init Collection
  final usersCollection =
      FirebaseFirestore.instance.collection(usersCollectionName);

  Future<Either<String, UserModel>> registerWithEmail(
      {String? email,
      String? password,
      String? username,
      String? mobile}) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);

      final userData = UserModel(
          admin: false,
          email: userCredential.user!.email,
          mobile: mobile,
          photoProfile: '',
          uid: userCredential.user!.uid,
          username: username);

      usersCollection.doc(userCredential.user!.uid).set(userData.toMap());

      return right(userData);
    } on FirebaseAuthException catch (e) {
      return left(e.toString().split(']').last);
    }
  }

  Future<Either<String, UserModel>> loginWithEmail(
      {String? email, String? password}) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      return loadUserData(userCredential.user!.uid);
    } on FirebaseAuthException catch (e) {
      return left(e.toString().split(']').last);
    }
  }

  Future<Either<String, UserModel>> loadUserData(String? uid) async {
    try {
      final userData = await usersCollection.doc(uid).get();
      if (userData.data()!.isNotEmpty) {
        return right(UserModel.fromMap(userData.data()!));
      } else {
        return left('User tidak ditemukan');
      }
    } on FirebaseAuthException catch (e) {
      return left(e.toString().split(']').last);
    }
  }

  Future<Either<String, UserModel>> changeProfile(UserModel userData) async {
    try {
      String uid = await Commons().getUID();
      final newPhoto = await Commons().getImage();
      String downloadUrl =
          await Commons().uploadFile(uid, newPhoto, fileName: uid);

      if (downloadUrl.isNotEmpty) {
        usersCollection
            .doc(uid)
            .set(userData.copyWith(photoProfile: downloadUrl).toMap());
      }
      return loadUserData(uid);
    } on FirebaseAuthException catch (e) {
      return left(e.toString().split(']').last);
    }
  }

  Future<void> logOutUser() async {
    await FirebaseAuth.instance.signOut();
  }
}
