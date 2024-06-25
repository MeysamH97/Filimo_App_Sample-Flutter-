class VideoDetail {
  String name;
  String description;
  String url;
  Uri videoUrl;
  String videoStory;

  VideoDetail(
      this.name, this.description, this.url, this.videoUrl, this.videoStory);
}

final List<VideoDetail> sliderVideosList = [
  VideoDetail(
      'میدان سرخ',
      'قسمت سیزدهم سریال جذاب میدان سرخ',
      'https://sabzmedia.com/wp-content/uploads/2021/11/Meydan-Sorkh-Episode-10-Sabzmedia-Com.jpg',
      Uri.parse('https://aspb29.cdn.asset.aparat.com/aparat-video/2832459e8fd63f44388772370ae448ca37585153-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6Ijk1NWZkZmZlZDEyZjE5ZTI0MGM4ZDUyOTMxMWE0MjZhIiwiZXhwIjoxNzEzNDE2NzY3LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.EXVuvepPCbK9_lrOxlJ1n5ZzY-Ua9mwummZLJgLUE6c'),
      'زنی به نام شیدا (مهتاب کرامتی) ناخواسته وارد بازی مرگباری می شود که پایه گذار آن شوهر مرحوم او و یک تروریست خارجی است. شیدا باید برای نجات دختر بیمارش مدتی با سه قاچاقچی بدنام و صاحب نفوذ به نام های پاپ (حمید فرخ‌ نژاد)، تورج مبینی (علی مصفا) و عبد مکین (سعید داخ) همراه شود. اما از همان ابتدا مشخص است که سرنوشت تلخی انتظار او را می کشد.'),
  VideoDetail(
      'نیسان آبی',
      'قسمت هشتم سریال نیسان آبی',
      'https://upmedia.me/wp-content/uploads/2021/12/episod8neysan.jpg',
      Uri.parse('https://caspian9.cdn.asset.aparat.com/aparat-video/ccbde3d56e2d1fcab317a585c4231d1d55609767-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjY0MDc2YTMwNjFhYWI4ZTUxYzI0MzA2MmFmNGU0Y2Y2IiwiZXhwIjoxNzEzNDE3NjUyLCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.2NYeNT-cJjk-ZAtHv0zWvKWjYZq5onjUFPXwQ558A0w'),
      'می‌خواهید از داستان سریال نیسان آبی در فیلیمو سردربیاورید؟ پس باید بدانید که قصه این سریال، با عشق جمشید آغاز می‌شود، البته نه از آن عشق‌های معمول و مرسوم؛ او عاشق نیسان‌آبی است و دل‌بستگی عمیقی به آن دارد. همین دل‌بستگی هم موتور محرک سریال در قسمت‌های ابتدایی است که طبیعتا بر معرفی کاراکترها و شخصیت‌ها متمرکز است. جمشید و رضا دوستانی قدیمی هستند که بخش عمده‌ای از ماجراهای سریال در دنیای مشترک و مرتبط با روابط دوستانه آن‌ها شکل می‌گیرد.'),
  VideoDetail(
      'قهوه تلخ',
      'قسمت آخر سریال قهوه تلخ',
      'https://static.cdn.asset.filimo.com/flmt/mov_31113_770-b.jpg',
      Uri.parse('https://persian2.cdn.asset.aparat.com/aparat-video/ee5979b0af2b67cef66d07900156dce943672129-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImYwOGFmMTNiOTgzMDA3NTgzYWZiMDZmZTQ2NjJhZWVhIiwiZXhwIjoxNzEzNDE3NTQ1LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.WjKhuPg9Fk-hcML3bzDKttfVj7nX1DNeXDWDOGuI1d4'),
      'تفاوت طبقه اجتماعی ارباب و رعیت، از زمانی که سنت هنرهای نمایشی را در ایران به یاد می‌آوریم (یعنی تقریبا دوران قاجار)، یکی از عناصر اصلی در طنز و نمایش بوده است. آنچه تا به امروز در قالب سیاه‌بازی و روحوضی به‌جامانده و در شکل‌های دیگری از کمدی به ارث برده شده، از دل همین تضادها شوخی می‌آفریند: کاراکتر ارباب/حاجی و سیاه به‌عنوان نمادی از رعیت که بدون تغییر جایگاه اجتماعی‌اش گاه و بی‌گاه با تکه و متلک انداختن تبدیل می‌شود به زبان رعیت تا اصطلاحا دلشان را خنک کند. سیاه با استفاده از موقعیت نمایشی و فاصله‌گذاری نسبی‌اش با سایر شخصیت‌ها، این مجوز را دارد تا حرف‌هایی درشت و کلفت را به زبانی تند و نیشدار بیان کند.'),
  VideoDetail(
      'جزیره',
      'قسمت سی و پنجم سریال جزیره',
      'https://static.cdn.asset.filimo.com/flmt/mov_85441_11882-b.jpg',
      Uri.parse('https://aspb33.cdn.asset.aparat.com/aparat-video/1092f1302a4ed5d8184b07092d7b4c0c38878829-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjM2MDA1MDEwYjFmMTAzYmFlNmNlYmNkOGJhODU1MzVlIiwiZXhwIjoxNzEzNDE3NzMxLCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.4neRTgHPMuyPadmgCI2e5_JcxSV-_kuZDwkLITmyUwU'),
      'صحرا خبرنگار جسوری است که قبلا با یک شکست عشقی مواجه شده و حالا می خواهد با ماجراجویی های خود مسائل زیادی را برای خود و دیگران ثابت کند. اما تصمیم گیری هایی او باعث می شود که ناخواسته وارد روابط تجاری پیچیده ای شود و زندگی خود و ارشد شاهنگ، شریک زندگی سابق و خانواده اش را نیز تغییر دهد.'),
];

final List<VideoDetail> newVideo = [
  VideoDetail(
      'آرانیاک',
      'آرانیاک - فصل اول قسمت اول',
      'https://static.cdn.asset.filimo.com/flmt/mov_102411_17450-m.jpg',
      Uri.parse(''),
      ''),
  VideoDetail('شاخ ها', 'شاخ ها',
      'https://static.cdn.asset.filimo.com/flmt/mov_96123_604-m.jpg', Uri.parse(''), ''),
  VideoDetail(
      'بی عدالتی 2',
      'بی عدالتی 2',
      'https://static.cdn.asset.filimo.com/flmt/mov_101188_15915-m.jpg',
      Uri.parse(''),
      ''),
  VideoDetail(
      'کریسمس 8 بیتی',
      'کریسمس 8 بیتی',
      'https://static.cdn.asset.filimo.com/flmt/mov_100686_15287-m.jpg',
      Uri.parse(''),
      ''),
  VideoDetail(
      'هاکای',
      'هاکای - فصل اول قسمت 4',
      'https://static.cdn.asset.filimo.com/flmt/mov_srl_96095_310-b.jpg',
      Uri.parse(''),
      ''),
];

final List<VideoDetail> freeVideo = [
  VideoDetail(
      'سریع و خشن مسابقه دهندگان جاسوس',
      'سریع و خشن مسابقه دهندگان جاسوس - فصل پنجم قسمت 8',
      'https://static.cdn.asset.filimo.com/flmt/mov_27953_1-m.jpg',
      Uri.parse(''),
      ''),
  VideoDetail('مسیر سلحشور', 'مسیر سلحشور',
      'https://static.cdn.asset.filimo.com/flmt/mov_18521_1-b.jpg', Uri.parse(''), ''),
  VideoDetail('مورتال کمبت', 'مورتال کمبت',
      'https://static.cdn.asset.filimo.com/flmt/mov_84199_291-b.jpg', Uri.parse(''), ''),
  VideoDetail('رنگو', 'رنگو',
      'https://static.cdn.asset.filimo.com/flmt/mov_7970_1-m.jpg', Uri.parse(''), ''),
  VideoDetail('هیتمن', 'هیتمن',
      'https://static.cdn.asset.filimo.com/flmt/mov_13517_1-b.jpg', Uri.parse(''), ''),
];
