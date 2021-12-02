import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/colors.dart';

class RefundPolicy extends StatefulWidget {
  @override
  State<RefundPolicy> createState() {
    return RefundPolicyState();
  }
}

class RefundPolicyState extends State<RefundPolicy> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Constants.primaryColor;
    return Material(
      color: _primaryColor,
      child: Container(
        padding:
            EdgeInsets.fromLTRB(size.width * 0.03, 0.0, size.width * 0.03, 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.12,
                alignment: Alignment.centerLeft,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: ImageIcon(
                      AssetImage('assets/account_page/cancel.png'),
                      size: size.height * 0.04,
                      color: Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
              Text(
                'Chính sách hoàn tiền',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Thời gian hoàn tiền',
                style: TextStyle(
                  fontSize: size.height * 0.028,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund1.png',
                content:
                    'Đơn hàng sẽ được ghi nhận sau 1-2h, kể từ lúc bạn đặt hàng thành công trên các trang TMĐT',
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund2.png',
                content:
                    'Nhận hoàn tiền vào ngày 5, tháng tiếp theo. Tính từ ngày đơn hàng được ghi nhận trên Prices',
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Lưu ý để nhận được hoàn tiền',
                style: TextStyle(
                  fontSize: size.height * 0.028,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund3.png',
                content:
                    'Đăng nhập tài khoản Prices.vn trước khi thực hiện mua hàng, trên các trang thương mại điện tử (TMĐT đã liên kết với Prices)',
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund4.png',
                content:
                    'Để có thể HOÀN được NHIỀU TIỀN. Nên thực hiện mua hàng nhiều lần qua ứng dụng Prices, bằng cách click vào nút MUA NGAY',
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund5.png',
                content:
                    'Không thêm sản phẩm vào Giỏ Hàng trên website/ ứng dụng TMĐT TRƯỚC KHI chuyển tiếp từ Prices qua.',
              ),
              SizedBox(height: size.height * 0.02),
              PolicyBox(
                iconAsset: 'assets/account_page/refund6.png',
                content:
                    'Không chấp nhận HOÀN TIỀN khi hủy, đổi trả, bom hàng hoặc tự tạo Shop và mua hàng để nhận hoa hồng.',
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Câu hỏi thường gặp',
                style: TextStyle(
                  fontSize: size.height * 0.028,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              QuestionBox(
                content: 'Hoàn tiền là gì? Làm thế nào để được nhận hoàn tiền trên Prices',
              ),
              SizedBox(height: size.height * 0.02),
              QuestionBox(
                content: 'Làm thế nào để rút tiền đã hoàn lại trên Prices',
              ),
              SizedBox(height: size.height * 0.02),
              QuestionBox(
                content: 'Các đánh giá sản phẩm trên Prices có trung thực không?',
              ),
              SizedBox(height: size.height * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}

class PolicyBox extends StatelessWidget {
  var iconAsset;
  var content;

  PolicyBox({required this.iconAsset, required this.content});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      padding: EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.1,
            child: Image.asset(
              this.iconAsset,
              width: size.width * 0.08,
              height: size.height * 0.08,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: size.width * 0.03),
              child: Text(
                this.content,
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: size.height * 0.016,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionBox extends StatelessWidget {
  var content;

  QuestionBox({required this.content});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      padding: EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.8,
            child: Text(
              this.content,
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: size.height * 0.016,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: size.height * 0.016,
            color: Color(0xff333333),
          ),
        ],
      ),
    );
  }
}
