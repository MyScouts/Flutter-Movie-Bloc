import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/configs/configs.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class WidgetTermOfService extends StatelessWidget {
  const WidgetTermOfService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          height: Get.height / 2,
          width: Get.width,
          padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 20),
          margin: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Terms Of Services",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                SizedBox(height: 15),
                Expanded(child: SingleChildScrollView(child: Html(data: """ 
                <!DOCTYPE html>
                      <html>
                      <head>
                        <meta charset='utf-8'>
                        <meta name='viewport' content='width=device-width'>
                        <title><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Điều khoản và điều kiện</font></font></title>
                        <style> body { font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; padding:1em; } </style>
                      </head>
                      <body>
                      <strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Điều khoản và điều kiện</font></font></strong> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Bằng cách tải xuống hoặc sử dụng ứng dụng, các điều khoản này sẽ tự động áp dụng cho bạn - do đó, bạn nên đảm bảo rằng bạn đã đọc chúng cẩn thận trước khi sử dụng ứng dụng. </font><font style="vertical-align: inherit;">Bạn không được phép sao chép hoặc sửa đổi ứng dụng, bất kỳ phần nào của ứng dụng hoặc các nhãn hiệu của chúng tôi theo bất kỳ cách nào. </font><font style="vertical-align: inherit;">Bạn không được phép cố gắng trích xuất mã nguồn của ứng dụng và bạn cũng không nên cố dịch ứng dụng sang các ngôn ngữ khác hoặc tạo các phiên bản phái sinh. </font><font style="vertical-align: inherit;">Bản thân ứng dụng và tất cả các nhãn hiệu thương mại, bản quyền, quyền cơ sở dữ liệu và các quyền sở hữu trí tuệ khác liên quan đến nó, vẫn thuộc về [Nhà phát triển / Tên công ty].
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    [Nhà phát triển / Tên công ty] cam kết đảm bảo rằng ứng dụng hữu ích và hiệu quả nhất có thể. </font><font style="vertical-align: inherit;">Vì lý do đó, chúng tôi có quyền thực hiện các thay đổi đối với ứng dụng hoặc tính phí các dịch vụ của ứng dụng, bất kỳ lúc nào và vì bất kỳ lý do gì. </font><font style="vertical-align: inherit;">Chúng tôi sẽ không bao giờ tính phí bạn cho ứng dụng hoặc các dịch vụ của ứng dụng mà không nói rõ cho bạn biết chính xác những gì bạn đang thanh toán.
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Ứng dụng https://www.shipfood.net/ lưu trữ và xử lý dữ liệu cá nhân mà bạn đã cung cấp cho chúng tôi để cung cấp Dịch vụ [của tôi / của chúng tôi]. </font><font style="vertical-align: inherit;">Bạn có trách nhiệm bảo mật điện thoại và quyền truy cập vào ứng dụng. </font><font style="vertical-align: inherit;">Do đó, chúng tôi khuyên bạn không nên bẻ khóa hoặc root điện thoại, đây là quá trình loại bỏ các hạn chế và giới hạn phần mềm do hệ điều hành chính thức của thiết bị của bạn áp đặt. </font><font style="vertical-align: inherit;">Điều này có thể làm cho điện thoại của bạn dễ bị nhiễm phần mềm độc hại / vi rút / chương trình độc hại, xâm phạm các tính năng bảo mật của điện thoại và có thể có nghĩa là ứng dụng https://www.shipfood.net/ sẽ không hoạt động bình thường hoặc hoàn toàn không hoạt động.
                                  </font></font></p> <div><p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                      Ứng dụng sử dụng các dịch vụ của bên thứ ba tuyên bố các Điều khoản và Điều kiện của riêng họ.
                                    </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                      Liên kết đến Điều khoản và Điều kiện của các nhà cung cấp dịch vụ bên thứ ba được ứng dụng sử dụng
                                    </font></font></p> <ul><li><a href="https://policies.google.com/terms" target="_blank" rel="noopener noreferrer"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dịch vụ của Google Play</font></font></a></li><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----></ul></div> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Bạn nên biết rằng có một số điều mà [Nhà phát triển / Tên công ty] sẽ không chịu trách nhiệm. </font><font style="vertical-align: inherit;">Một số chức năng nhất định của ứng dụng sẽ yêu cầu ứng dụng có kết nối internet đang hoạt động. </font><font style="vertical-align: inherit;">Kết nối có thể là Wi-Fi hoặc do nhà cung cấp mạng di động của bạn cung cấp, nhưng [Nhà phát triển / Tên công ty] không thể chịu trách nhiệm về việc ứng dụng không hoạt động ở đầy đủ chức năng nếu bạn không có quyền truy cập vào Wi-Fi và bạn không không còn bất kỳ khoản cho phép dữ liệu nào của bạn.
                                  </font></font></p> <p></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Nếu bạn đang sử dụng ứng dụng bên ngoài khu vực có Wi-Fi, bạn nên nhớ rằng các điều khoản của thỏa thuận với nhà cung cấp mạng di động của bạn sẽ vẫn được áp dụng. </font><font style="vertical-align: inherit;">Do đó, bạn có thể bị nhà cung cấp dịch vụ di động tính phí dữ liệu trong suốt thời gian kết nối khi truy cập ứng dụng hoặc các khoản phí khác của bên thứ ba. </font><font style="vertical-align: inherit;">Khi sử dụng ứng dụng, bạn chấp nhận chịu trách nhiệm về mọi khoản phí như vậy, bao gồm cả phí chuyển vùng dữ liệu nếu bạn sử dụng ứng dụng bên ngoài lãnh thổ quốc gia của mình (tức là vùng hoặc quốc gia) mà không tắt chuyển vùng dữ liệu. </font><font style="vertical-align: inherit;">Nếu bạn không phải là người thanh toán hóa đơn cho thiết bị mà bạn đang sử dụng ứng dụng,
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Cùng một dòng, [Nhà phát triển / Tên công ty] không phải lúc nào cũng chịu trách nhiệm về cách bạn sử dụng ứng dụng, tức là Bạn cần đảm bảo rằng thiết bị của mình vẫn được sạc - nếu thiết bị hết pin và bạn không thể bật nó lên để sử dụng Dịch vụ, [Nhà phát triển / Tên công ty] không thể nhận trách nhiệm.
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Đối với trách nhiệm của [Nhà phát triển / Tên công ty] đối với việc bạn sử dụng ứng dụng, khi bạn đang sử dụng ứng dụng, điều quan trọng cần lưu ý là mặc dù chúng tôi cố gắng đảm bảo rằng nó luôn được cập nhật và chính xác, chúng tôi dựa vào các bên thứ ba để cung cấp thông tin cho chúng tôi để chúng tôi có thể cung cấp thông tin cho bạn. </font><font style="vertical-align: inherit;">[Nhà phát triển / Tên công ty] không chịu trách nhiệm pháp lý đối với bất kỳ tổn thất nào, trực tiếp hay gián tiếp mà bạn gặp phải do hoàn toàn dựa vào chức năng này của ứng dụng.
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Tại một số điểm, chúng tôi có thể muốn cập nhật ứng dụng. </font><font style="vertical-align: inherit;">Ứng dụng hiện có sẵn trên Android và iOS - các yêu cầu đối với hệ thống (và đối với bất kỳ hệ thống bổ sung nào mà chúng tôi quyết định mở rộng tính khả dụng của ứng dụng) có thể thay đổi và bạn sẽ cần tải xuống các bản cập nhật nếu bạn muốn tiếp tục sử dụng ứng dụng. </font><font style="vertical-align: inherit;">[Tên nhà phát triển / Công ty] không hứa rằng họ sẽ luôn cập nhật ứng dụng sao cho phù hợp với bạn và / hoặc hoạt động với phiên bản Android &amp; iOS mà bạn đã cài đặt trên thiết bị của mình. </font><font style="vertical-align: inherit;">Tuy nhiên, bạn hứa sẽ luôn chấp nhận các bản cập nhật cho ứng dụng khi được cung cấp cho bạn, Chúng tôi cũng có thể muốn ngừng cung cấp ứng dụng, </font><font style="vertical-align: inherit;">và có thể chấm dứt việc sử dụng nó bất cứ lúc nào mà không cần thông báo về việc chấm dứt cho bạn. </font><font style="vertical-align: inherit;">Trừ khi chúng tôi cho bạn biết cách khác, khi bất kỳ sự chấm dứt nào, (a) các quyền và giấy phép được cấp cho bạn trong các điều khoản này sẽ chấm dứt; </font><font style="vertical-align: inherit;">(b) bạn phải ngừng sử dụng ứng dụng và (nếu cần) xóa nó khỏi thiết bị của bạn.
                                  </font></font></p> <p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Các thay đổi đối với Điều khoản và Điều kiện này</font></font></strong></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    [Tôi / Chúng tôi] có thể cập nhật các Điều khoản và Điều kiện của chúng tôi theo thời gian. </font><font style="vertical-align: inherit;">Vì vậy, bạn nên xem lại trang này định kỳ để biết bất kỳ thay đổi nào. </font><font style="vertical-align: inherit;">[Tôi / Chúng tôi] sẽ thông báo cho bạn về bất kỳ thay đổi nào bằng cách đăng các Điều khoản và Điều kiện mới trên trang này.
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Các điều khoản và điều kiện này có hiệu lực kể từ ngày 21 tháng 9 năm 2021
                                  </font></font></p> <p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Liên hệ chúng tôi</font></font></strong></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Nếu bạn có bất kỳ câu hỏi hoặc đề xuất nào về Điều khoản và Điều kiện của [tôi / chúng tôi], vui lòng liên hệ với [tôi / chúng tôi] tại https://www.shipfood.net/.
                                  </font></font></p> <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Trang Điều khoản và điều kiện này được tạo bởi Trình tạo </font><a href="https://app-privacy-policy-generator.nisrulz.com/" target="_blank" rel="noopener noreferrer"><font style="vertical-align: inherit;">chính sách quyền riêng tư</font></a><font style="vertical-align: inherit;"> của </font></font><a href="https://app-privacy-policy-generator.nisrulz.com/" target="_blank" rel="noopener noreferrer"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ứng dụng</font></font></a></p>
                      </body>
                      </html>
                """))),
                SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MAIN_COLOR,
                    ),
                    child: Text(
                      "Accept",
                      style: STYLE_SMALL_BOLD.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image.asset("assets/images/onboarding-1.png")),
          ),
        ),
      ],
    );
  }
}
