// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../../../../../src/screens/screens.dart';

class DetailOrderKilogram extends StatefulWidget {
  DetailOrderKilogram({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailOrderKilogram> createState() => _DetailOrderKilogramState();
}

class _DetailOrderKilogramState extends State<DetailOrderKilogram> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _addressDetailController = TextEditingController();
  final _instruksiTambahanController = TextEditingController();
  final OrderController getOrderController = Get.find<OrderController>();

  bool statusSwitch = false;
  String? kelas;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _addressDetailController.dispose();
    _instruksiTambahanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: HStack([
              'Total items:'
                  .text
                  .fontFamily('nunitoexb')
                  .color(colorName.button)
                  .size(14)
                  .bold
                  .make(),
              5.widthBox,
              '1'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make(),
              210.widthBox,
              'IDR '
                  .text
                  .fontFamily('nunitoexb')
                  .color(colorName.button)
                  .size(14)
                  .bold
                  .make(),
              '${getOrderController.totalData?.totalPrice}'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make()
            ]),
          ),
          ButtonWidget(
            text: 'Continue',
            onPressed: () {
              DetailPenerima newDetailPenerima = DetailPenerima(
                name: _nameController.text,
                phoneNumber: _phoneController.text,
                address: _addressController.text,
                pengiriman: 'pengiriman',
                addressDetail: _addressDetailController.text,
                instruksiTambahan: _instruksiTambahanController.text,
              );
              Get.put(OrderController()).setDetailPenerima(newDetailPenerima);
              context.goNamed(Routes.kgSummaryScreen);
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorName.background,
        title: 'Laundry Kilogram'
            .text
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .size(18)
            .makeCentered(),
        actions: [
          Icon(
            Icons.cancel,
            color: colorName.grey,
          ).pOnly(right: 20)
        ],
        iconTheme: const IconThemeData(color: colorName.primary),
      ),
      body: SafeArea(
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileIsLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ProfileIsSuccess) {
              var address = state.data!.address;
              _nameController.text = statusSwitch ? state.data!.username : '';
              _phoneController.text =
                  statusSwitch ? state.data!.phoneNumber : '';
              _addressController.text = statusSwitch
                  ? address.id.toString() +
                      address.city +
                      address.rt +
                      address.rw +
                      address.province
                  : '';
              _addressDetailController.text =
                  statusSwitch ? address.adressDetail : '';

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        'Detail Penerima'
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                      ],
                    ).p(20),
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              'Use my registered information'
                                  .text
                                  .size(16)
                                  .fontFamily('nunitoexb')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                              Switch.adaptive(
                                inactiveThumbColor: colorName.layer,
                                value: statusSwitch,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      statusSwitch = !statusSwitch;
                                      // Get.off(DetailRegisterKg());
                                    },
                                  );
                                },
                              ),
                            ],
                          ).pOnly(left: 20, right: 20, top: 10, bottom: 5),
                          const VxDivider().pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Name'
                                  .text
                                  .size(14)
                                  .bold
                                  .fontFamily('nunito')
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: _nameController,
                            decoration: const InputDecoration(
                              hintText: 'e.g John Dae',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Phone number'
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: _phoneController,
                            decoration: const InputDecoration(
                              hintText: 'e.g +6287*********',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Address'
                                  .text
                                  .fontFamily('nunito')
                                  .size(14)
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: _addressController,
                            decoration: const InputDecoration(
                              hintText: 'e.g Street name, number',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              'Address details  '
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                              'Optional'
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.grey)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            controller: _addressDetailController,
                            decoration: const InputDecoration(
                              hintText: 'e.g Floor, unit number',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20, bottom: 20),
                        ],
                      ),
                    ).wFull(context).pOnly(left: 20, right: 20),
                    Row(
                      children: [
                        'Pilih pengiriman'
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                      ],
                    ).pOnly(left: 20, right: 20, top: 20),
                    10.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: colorName.grey),
                      ),
                      child: Row(
                        children: [
                          DropdownButton<String?>(
                            value: kelas,
                            style: TextStyle(
                              color: colorName.button,
                              fontFamily: 'nunitoexb',
                              fontSize: 16,
                            ),
                            underline: Container(),
                            items: [
                              'Lestari Delivery ',
                              'Go Send',
                            ]
                                .map(
                                  (element) => DropdownMenuItem<String?>(
                                    child: Text('$element'),
                                    value: element,
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(
                                () {
                                  if (value != null) {
                                    kelas = value;
                                  }
                                },
                              );
                            },
                          ).pOnly(left: 20, top: 5, bottom: 5),
                        ],
                      ),
                    ).pOnly(left: 20, right: 20, bottom: 20),
                    Row(
                      children: [
                        'Instruksi tambahan  '
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                        'Optional'
                            .text
                            .size(18)
                            .fontFamily('nunito')
                            .color(colorName.grey)
                            .make(),
                      ],
                    ).pOnly(left: 20, right: 20),
                    10.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: colorName.grey),
                      ),
                      child: TextFormField(
                        controller: _instruksiTambahanController,
                        decoration: const InputDecoration(
                          hintText:
                              'e.g Lorem ipsum dolor sit amet consectetur adipiscing elit',
                          hintStyle:
                              TextStyle(color: colorName.grey, fontSize: 13),
                          border: InputBorder.none,
                        ),
                      ).p(10).centered(),
                    ).pOnly(left: 20, right: 20, bottom: 20),
                  ],
                ),
              );
            }
            return Center(
              child: Text('Error'),
            );
          },
        ),
      ),
    );
  }
}
