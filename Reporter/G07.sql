-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: g07
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Web Development','2018-05-10'),(2,'Tech Gadgets','2018-05-11'),(3,'Business','2018-05-17'),(4,'Health & Wellness','2018-10-28'),(5,'DataBase','2018-11-18');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (2,'Apple'),(3,'Asus'),(4,'Acer'),(5,'Microsoft'),(7,'Samsuna');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_topics`
--

DROP TABLE IF EXISTS `new_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `new_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `img_url` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_topics`
--

LOCK TABLES `new_topics` WRITE;
/*!40000 ALTER TABLE `new_topics` DISABLE KEYS */;
INSERT INTO `new_topics` VALUES (1,'921地震後最嚴重傷亡　台灣記取了哪些教訓？','八仙塵爆救災流程總體檢','2015年6月27日晚上8時許，八仙樂園發生粉塵爆炸，現場恍如人間煉獄，八仙塵爆造成近500人死傷，是台灣繼921大地震以來受傷人數多的意外事故。事過半年，這場意外已經奪走15條年輕生命，活下來的人還在復健中心與疤痕戰鬥、為正常生活奮鬥。台灣從這場爆炸中學會教訓了嗎？我們能不能避免下一次的意外？如果再發生大量傷患事件，醫療系統準備好了嗎？司法究責與賠償官司的進度又到了哪裡？透過訪談政府、醫護、傷患三方，《報導者》持續追蹤後續。','https://storage.googleapis.com/twreporter-multimedia/images/20160815093303-03ef73a7dbd3ce78f7f09c2f326d8a4b-desktop.jpg','https://www.twreporter.org/topics/after-20150627explosion','2015.12.16'),(2,'急診室崩壞　你必須知道的台灣醫療困境','急診被當健診使用　爆肝成了常態','「如果你沒看過難民營，那就來急診室走一遭吧。」八仙塵爆已近半年，當時電視畫面瘋狂轉送急診室的畫面──擁擠的病床上、哀號的病人、奔跑的醫護人員、心急如焚的家屬們，宛如難民營般的景象彷彿還歷歷在目，你還記得嗎？但這並非是重大災害發生時才會出現的狀況，走進各縣市的大型的教學醫院以及醫學中心，多數每天仍然上演著這樣的劇情，背後其實隱含著嚴重的醫療危機，跟生活在台灣的每個你我都相關。我們製作了台灣第一款急診室新聞遊戲，事前訪談了多位醫學中心的急診室醫師，將他們每天緊湊的工作真實情況融入遊戲中，希望透過遊戲與報導，讓所有人真實體驗與理解急診室難以想像的忙碌以及壅塞程度。 ','https://storage.googleapis.com/twreporter-multimedia/images/20160814174244-a179835c4aa8f129ec793708f0c5bc26-desktop.gif','https://www.twreporter.org/topics/emergency-overstrain','2015.12.16'),(3,'高雄不可承受之「輕」','高雄煉油廠　人生與階級的命運交叉點','30年前，南下火車上滑過黑烏烏的二仁溪，繼續南行，還沒看到矗立的煙囪、燃燒塔、油槽，光從空氣中隱隱飄散的刺鼻味，乘客就知道高雄到了！隨著列車南移，鬱鬱蔥蔥的半屏山慢慢現身，一側有因採礦，時而傳來爆破聲響的水泥廠，另一側則有每到夜裡高聳的燃燒塔燃出一炬火光的中油高雄煉油廠總廠。中油高雄煉油廠的前身是日治時期的海軍第六燃料廠，到國府時期成了中油公司高雄廠，多數居民依然以農為業，在生活環境受到破壞，生活方式轉變，個人健康也受 到影響，進而引發台灣環境運動史上的重要一役「反五輕運動」。後勁人等著高雄煉油廠遷廠只等了25年嗎？自民國35年，國民政府自日本政府接收海軍第六燃料場成為中油煉油廠至今，已超過60年。豈止是少年到白頭，世代早已更迭一代又一代。這份遲來的正義，早已不是正義。★【互動專題】高雄廠煙下，中油工人的最後一天','https://storage.googleapis.com/twreporter-multimedia/images/20160812110753-e23286679082e2b6a7f37eca434e5184-desktop.jpg','https://www.twreporter.org/topics/refinery-content','2015.12.16'),(4,'空汙，爭一口氣','當PM2.5成為事實　防制汙染就是義務','2016年1月19日，環保署公布PM2.5的三年監測資料，\n除了台東，全台所有縣市的空氣品質都不及格！中南部空汙嚴重地區的民眾已自發性行動，從孩童教育到抓空汙兇手都有人在做。\n我們的政府是否也能拿出決心魄力，跟上國際空汙防制的腳步？','https://storage.googleapis.com/twreporter-multimedia/images/20160815053224-a57aa4eb55eca3ab49d180c8cf7bf8c0-desktop.jpg','https://www.twreporter.org/topics/air-pollution-control','2016.1.19'),(5,'新獨立時代──台灣人身分認同的轉折','中國人或台灣人？你我都曾遇到的身分認同難題','過去10多年，台灣認同的圖像確實有巨大的變化。2016總統大選更被視為是台灣意識的高峰，與中國意識的衰退。但是，它真的是台獨的契機，又或是台灣共同體建立與追尋的開始？不論哪個世代的人，在這個身世複雜的島嶼上，我們總會在生命的某一刻，撞上屬於台灣人特有的，認同的衝突與轉折。能否包容差異性與多元認同，將是所有居住在這座島嶼上的人們，最重要的功課。無論如何，一個努力想像台灣內涵的新獨立時代，已拉開序幕。★【互動圖表】變動的「台灣人」：畫出你認為的認同變化曲線','https://storage.googleapis.com/twreporter-multimedia/images/20160815165838-c9635d811b51d8c21a9246c8bc154739-desktop.jpg','https://www.twreporter.org/topics/taiwan-identity','2016.1.19'),(6,'漂泊的國家．漂泊的人','敘利亞難民的一堂法文課','在歐洲各國猶豫是否該庇護更多難民、調整移民政策的此刻，《報導者》特約記者林禹瑄帶你走進難民、北非二代移民眼中的比利時首都布魯塞爾 ，貼近那些堅持滯留歐洲外來者，試圖理解一位受訪者所說的：\n\n「如果這樣的生存條件我們都還願意忍受，你們是不是稍微可以想像，我們所要逃離的，是怎樣的世界？」 ','https://storage.googleapis.com/twreporter-multimedia/images/20161128164613-e38eee8729c455fe1a9900d85ff6d021-desktop.jpg','https://www.twreporter.org/topics/brussels-migrants','2016.1.27'),(7,'聲音地圖','看見人生，聽見人「聲」百態','每個人的聲音都有故事，透過一段段的聲音，我們看見人生，也聽出人「聲」百態。在這個混沌又繁雜、在訊息轟炸的時代裡，「聲音地圖」這個系列，我們用聲音鑿開一道縫隙，讓一些特色人物，為你讀上他／她們所愛的一本書、一首詩、幾個句子，透過簡單的聲音檔，帶你聽見百態人生。 ','https://storage.googleapis.com/twreporter-multimedia/images/20161202174137-a13ee97633160a4c4b44886d4f229257-desktop.jpg','https://www.twreporter.org/topics/sound-map','2016.1.31'),(8,'看看攝影','新聞報導不只是文字記者的事情','《報導者》推出「看看攝影」專題，邀請黃建亮與鍾易庭兩位老師針對當代記實攝影各種面向，由淺入深的討論思考攝影未來可能性；「現場導覽」單元則帶領社會大眾走進攝影展場空間，跨越時空限制，閱讀影像。與談者介紹│黃建亮│ 是導演，是新聞攝影師。\n為人熟知《燃燒吧！歐吉桑》電影，Ｄiscovery頻道「聚焦台灣」系列，紐約時報駐台攝影師…等，並且成立亮相館，對攝影有獨到見解。│鍾易庭│ ExLab攝影實驗室主持人。\n紐約巴德大學畢業。攝影評論者。與鍾易庭論說攝影，思考攝影本質，反覆辯證，攝影將會屬於自己生活的一部分。','https://storage.googleapis.com/twreporter-multimedia/images/20160822010121-f0b11c2be291984f888527bf35a650f0-desktop.png','https://www.twreporter.org/topics/photography-conversation-series','2016.2.4'),(9,'台南地震維冠大樓釀百死，給台灣什麼警示？','如果地震發生在台南市之外⋯⋯','2016年2月6日凌晨4點，芮氏規模6.4的大地震震倒了台南永康維冠大樓，造成上百人傷亡。\n各方專家不約而同地抨擊「中央災防體系是沒錢、沒權、沒人的多頭馬車」，讓台灣災害防救工作停滯不前。 \n\n地處斷層帶上，台灣作為地震之國， 這些年來，是否真正的記取了教訓？還有哪些重要的工作我們沒有做好？ \n台南百條人命，是否足以喚醒台灣由政府、建商到一般人民對地震的防災意識？\n','https://storage.googleapis.com/twreporter-multimedia/images/20160816011707-0333eb233b8ccc7fbf9b356a31d6b96f-desktop.jpg','https://www.twreporter.org/topics/0206earthquake','2016.2.13'),(10,'花蓮193線道的美麗與哀愁','花蓮193縣道的美麗與哀愁','8米寬的花蓮193線道北段，是自行車騎士深遊花蓮之美的綠色隧道，但花蓮縣府為了觀光人潮，決定將這裡開闢成20米、能容納大型車進入的觀光道路。2015年12月至今，花蓮縣府多次闖關環境差異分析審查，\n193線道能保有它的幽靜之美嗎？《報導者》將持續追蹤報導。','https://storage.googleapis.com/twreporter-multimedia/images/20160815052001-0b13343ef3da2d3f47724bc3df01dc95-desktop.jpg','https://www.twreporter.org/topics/hualien-193-eia','2016.4.10'),(11,'亞洲森林浩劫　誰讓地球禿了頭','台灣森林保育黑洞：炸山毀林的採礦者','4月22日，世界地球日邁入第46週年，今年的主題是「Trees for the Earth」。《報導者》與平面媒體《今周刊》合作，以半年時間深入台灣、馬來西亞、中國等破壞山林及生態保育現場，推出「亞洲森林浩劫」專題，從各面向檢視森林保育的當務之急。 在自然生態教育家徐仁修眼中，森林是茂密的樹冠層、鬆軟輕柔的土壤，孕育生物多樣性的天堂。在巴黎氣候峰會的各國領袖眼中，森林是碳吸存最重要地區，是遏止全球氣候暖化最有效的工具。儘管它很重要，但過去20年，綠色森林依舊一塊一塊消失，換上褐色光禿禿的地表。世界自然基金會（WWF）在2009年公布，全球森林每年減少730萬公頃，每分鐘消失36個足球場面積。WWF不斷倡議，2020年實現「森林零淨砍伐與零淨退化」目標，因為這是「因應危機，維持地球健全所必要。」 去年底，巴黎氣候峰會正式將森林從過去配角變成遏止氣候暖化的重要主角。過去，各國可以把復育森林算進碳排放的減項（鼓勵造林），現在則要把各國毀壞森林所消失的碳吸存計算在內，積極阻止各國森林消失。 台灣在20多年前，林地政策就從經濟開發走向保育，但直到今天，過去特權所遺留的礦區政策，仍是森林保育的巨大黑洞，許多礦區仍直接位於保安林內，甚至危及文化資產保護法列舉的珍稀林木。 採礦申請方興未艾，對於不合法、不合理的礦區案，急需修改《礦業法》以保護山林，這也是520後新政府重要責任與挑戰。儘管如此，台灣森林保育已經走在亞洲其他華人社會之前。馬來西亞、中國正處在砍伐森林的高峰，過去14年，中國森林消失的面積排名全球第6，霧霾越來越嚴重，台灣深受其害；馬來西亞更是全球森林面積消失最快的國家，過去14年，該國已有2成森林消失。但很多人不知道，台灣是馬來西亞雨林消失的兇手之一，因為台灣是馬來西亞原木出口的第二大國。「你們保護自己的森林，卻來破壞馬來西亞雨林。」馬來西亞環保人士提出尖銳批評。 「生態是不分國界的。」20年前創立台灣荒野保護協會的徐仁修說，從全球公民角度來看，台灣還有許多待盡責任。他認為，現在的中國與馬來西亞正像是20年前的台灣，處在環境保育的關鍵點。何況，台灣與這兩個國家的生態息息相關。過去10年，他協助馬來西亞與中國的環保組織成立或轉型，成為當地新興綠色力量，也試著從經濟開發巨斧下搶回森林淨土。 「亞洲森林浩劫」專題將為讀者帶來第一手現場觀察，期待各界與新政府高度重視森林保育關鍵課題：','https://storage.googleapis.com/twreporter-multimedia/images/20160817181444-a51d80d518ba218ae1751b931e5dfad7-desktop.jpg','https://www.twreporter.org/topics/asia-forest','2016.4.20'),(12,'同志家庭與他們的孩子','布丁男孩的2個媽媽','在台灣有一群不一樣的父母親，組成了「同志家庭」。\n當少子化愈來愈嚴重，他們卻反其道而行，付出高昂代價只為一圓育兒夢想。從「出櫃」到求子，同志家庭的育兒夢須在社會異樣眼光中辛苦前進。\n「當同志成為父母親」，也成為慶祝母親節聲中值得重視的社會現象⋯⋯    同志家庭樣貌各異，但也擁有一般家庭的煩惱與幸福：\n要哪種育兒法？要參加哪個共學團？老婆想生第三胎怎麼辦？然而制度的缺口，讓同志家庭不僅遭遇生活上的不便，更可能攸關性命。\n他們能否在生死交關時彼此相守，就看我們的社會能否尊重個體的與眾不同。\n突破制度高牆，也要靠擁有共同夢想的同志伴侶一同去克服。\n這條漫漫長路，現在只是開始而已。 ','https://storage.googleapis.com/twreporter-multimedia/images/20160817181345-aa790c271fd61a6083e1344ac74f5c94-desktop.jpg','https://www.twreporter.org/topics/same-sex-parents-family','2016.5.6'),(13,'台灣人在中國：生錯時代的博士教授','台灣人如何在中國學術叢林生存？','曾經不短的一段時間，台灣學術人才虎虎生風、被高薪禮聘至中國大學任教。但這樣的情況正在改變。過去幾年間，台彎正快速輸出基層的學術人才，他們多數是台灣自己培養的博士，因為產量過剩，中國大撿便宜，大量的學術移工正辛苦地跨過黑水溝，赴中國任教。《報導者》深入這個群體，跟著他們從沿海到內陸，從上海到內蒙古，甚至進到你很少聽過的獨立學院、技職學院。他們深入中國各處，遍地開花。他們是一群生錯時代，也是一群被台灣犠牲的博士們。此文同時在《天下雜誌》上刊登。','https://storage.googleapis.com/twreporter-multimedia/images/20160818171938-86716babbbc80be5032886efb41b4f2c-desktop.jpg','https://www.twreporter.org/topics/taiwanese-phd-in-china','2016.6.8'),(14,'正視性侵受害者　不再讓他／她孤單','【不再讓你孤單】上篇：否定他人的痛苦，與殺人無異','「性侵」的傷害有多深？面對他人的傷痛時，可以做些什麼？如果手被刀子割傷，一般人通常會先止血，然後清洗、消毒、敷藥。如果遇到有人嚴重骨折，旁人也知道第一時間內不可移動傷者。我們對於「生理傷口」總有一定的處理步驟，面對「心理傷口」時，卻常常不知所措，沈默旁觀。一位性侵倖存者在訪談中提到：「我需要的『公道』是，這個社會怎麼面對不斷有這個事情發生？一般人聽到這樣的事情發生，他們會採取什麼樣的行動，怎麼樣面對這些被害者？」撫平傷痕，從不再移開目光，用心理解開始……','https://storage.googleapis.com/twreporter-multimedia/images/20160818160254-2113c201bafcb4e3b1c25ee990516d84-desktop.jpg','https://www.twreporter.org/topics/sexual-assault-victims','2016.7.18'),(15,'再見，陳金鋒','無可取代的台灣棒壇傳奇','在台灣球迷心中，陳金鋒是永遠的52號、永遠的第四棒、永遠的台灣巨砲。\n在台灣棒球史上，他掀起旅美追夢的浪潮，他是國際賽事裡的神與希望。\n他的地位，無可取代。棒球，是許多人成長歲月中難忘的生命印記，而陳金鋒更是這些珍貴記憶中不可分割的一部分。2016年9月18日，陳金鋒正式引退，在這重要時刻，報導者推出「再見陳金鋒」專題，試圖從不同面向記錄與解讀這位台灣棒壇的傳奇人物。','https://storage.googleapis.com/twreporter-multimedia/images/20170703121739-5f8525c7fa78de3bb32887482c8a98cc-desktop.jpg','https://www.twreporter.org/topics/chen-chin-feng','2016.9.18'),(16,'誰讓台灣公僕變庸才？','荒謬的相親──公務人員考選制度','公部門，這個全國最龐大也最關鍵的公司，擁有30多萬名優秀人才，卻因為一連串荒謬的制度與文化，導致人才變庸才。《報導者》希望透過專題喚醒各界對公務員文化的省思，延續公務人員的專業與熱情，讓公務員成為國家進步的最大動力。 ','https://storage.googleapis.com/twreporter-multimedia/images/20160920073700-27738d243db1dffb2e660b98a18fdc79-desktop.jpg','https://www.twreporter.org/topics/civil-servants','2016.9.22'),(17,'從他國經驗思索台灣轉型正義道路','台灣不是唯一面對轉型正義難題的國家──他國轉型正義經驗的思索','轉型正義究竟要如何推動？相信這是許多人，包括蔡英文總統，內心不時出現的疑惑。《報導者》與台灣民間真相與和解促進會、衛城出版合作，推出南非、德國、智利、波蘭和匈牙利的轉型正義歷史，文章特別側重在制度與法律面向。希望這些報導分析可以擴大台灣社會對於轉型正義的橫向吸收，進一步思考台灣應該選擇的道路。 ','https://storage.googleapis.com/twreporter-multimedia/images/20161031164144-4f868d84d9e804cd550a0e8be04b92fc-desktop.jpg','https://www.twreporter.org/topics/transitional-justice-experience','2016.11.4'),(18,'零安樂死真相','零安樂死政策——流浪動物的新天堂樂園？（上）','2017年2月，零安樂死政策正式實施，表面上看來似乎是台灣動保運動的一大里程碑。然而，關乎流浪動物的諸多問題仍有待解決。政策倉促上路的結果，是對動物福利造成更多的傷害，而衝擊最深的將是第一線工作人員。','https://storage.googleapis.com/twreporter-multimedia/images/20161222143241-641f9e23eed12fc28dfb9b4fa3d5e413-desktop.png','https://www.twreporter.org/topics/no-killing-policy','2016.11.15'),(19,'造假．剝削．血淚漁場','跨國直擊台灣遠洋漁業真相','台灣遠洋漁業在世界稱霸，但這是用什麼換來的？ 《報導者》與印尼最重要的調查媒體《Tempo Magazine》跨國聯手合作，共同深入台灣、印尼，揭開台灣境外聘僱漁工的真相。我們看到台、印仲介如何「引誘」中爪哇島的男人們上漁船，表面上看似生活改善，但他們其實像人肉機器，在惡劣環境下工作，赤裸被剝削，不乏被毆打、甚至死亡的個案。漁業署卻坐視漁工簽訂違法工作契約，在印尼漁工悲劇上難辭其咎。 這是個由台、印仲介和兩國政府開啟的，人口走私的地獄之門。 最大的罪惡不只是對漁工的奴役。 鮪魚業規模最大、漁船規模全球最多的漁業王國──台灣，仍存在不少荒謬的真相。海上最孤獨但又最重要的職業—漁業觀察員們，首度在我們的追蹤下，揭露漁業署容忍遠洋上的過撈行徑，不只漁獲資料造假，連船長、輪機長身份也都可以造假。 這個漁業王國如何損耗自己的國際名聲？有可能重建產業的信心與希望嗎？ \n\n（更多報導內容，收錄在《報導者》第一本專書：《血淚漁場：跨國直擊台灣遠洋漁業真相》）','造假．剝削．血淚漁場','https://www.twreporter.org/topics/far-sea-fishing-investigative-report','2017.1.10'),(20,'工地人間','工地「大嫂」──台灣女性堅強又溫柔的職場身影','《報導者》開春推出林立青執筆的「工地人間」系列作品。長期擔任工地監工的林立青，每天與工人共同呼吸，看見屬於勞動者的人生百態。','https://storage.googleapis.com/twreporter-multimedia/images/20170123161016-bdaee5ecd778afaeaae971903d2e9c91-desktop.jpg','https://www.twreporter.org/topics/those-workers-lives','2017.2.2'),(21,'阿嬤的告白系列影像','阿嬤的告白之一──素顏','這些影像讓一群人類黑暗歷史見證者、也是受害者站出來，她們之中願意挺身而出的，可以拿下面具向世人控訴結構暴力，還有壓力的人，依然可以委身面具之後，等待一個公道。 ','https://storage.googleapis.com/twreporter-multimedia/images/20170315143614-a77a53b2dbb91aa4d383f51d2a99d7e7-desktop.jpg','https://www.twreporter.org/topics/comfort-women-photos','2017.3.16'),(22,'好死，好難？','自己的善終，自己爭','台灣人臨終前，平均臥床時間長達7.3年、花費至少300萬元。為什麼在台灣，求個「好死」，這麼難？為什麼有七位台灣人成為瑞士「協助自殺組織」的會員？\n\n當前體育主播傅達仁、作家瓊瑤都鼓吹安樂死合法化，當高齡化、無預警重症與癌症襲擊時，我們是否該思考，在特定情況下，醫療延長的究竟是生命，還是痛苦？在「生命權」和「自主權」之間，台灣社會的價值如何擺盪？有的人面對不可避免的生命終點，已交代好身後事、簽好生命末期時拒絕急救的意願書。而你知道嗎，將於一年半後上路的《病人自主權利法》，便是希望人人都要有隨時可能變成病人的自覺，及早掌握自己的善終權。所有人都希望能安心上路，但是，你為未來的自己做好準備了嗎？','https://storage.googleapis.com/twreporter-multimedia/images/20170423001655-79fe4a0d1490af88db7ffc53ac3547f1-desktop.jpg','https://www.twreporter.org/topics/euthanasia-patient-right-good-death','2017.4.21'),(23,'工作貧窮！年資中斷、欠薪頻傳的派遣大軍們','台灣勞工，你好嗎？蔡英文勞動政策平台等你來追蹤','想要一份正職，穩定有保障的工作似乎越來越難了！14年來，台灣派遣人力遽增5倍，已達42萬名。企業藉著派遣規避該給員工的年終福利、年資，政府藉著派遣突破公務人員名額的限制，派遣成了一門好生意，吸引各行各業投入經營。派遣行業競爭激烈，已進入低價競爭惡性循環，而沒有明文保障的派遣大軍們的勞動環境只有越來越惡劣。總統蔡英文曾說，勞工是她心中最軟的一塊，上台首先要做的便是扭轉低薪、改善過勞。在她上任後的第一個勞動節，我們想問，台灣勞工，你過得好嗎？邀請你一起追蹤蔡英文總統這一年來為勞工做了哪些事情，並針對各項勞動政見的滿意度給予評分。','https://storage.googleapis.com/twreporter-multimedia/images/20170429183015-ec711d99b80d9ab3914e8b9ac999de19-desktop.jpg','https://www.twreporter.org/topics/taiwan-temporary-workers','2017.4.30'),(24,'農藥減量行不行？','台灣農村用藥實況','隨著食安、環境議題發酵，農藥管理也成為政府近來最重視的項目之一， 全面禁用劇毒農藥、加強蔬果農藥殘留抽驗、提高有機耕地面積都是過去工作的重點。   \n\n然而，儘管有機、安全用藥耕地（如：吉園圃）面積增加，台灣農藥使用量卻沒有同步明顯下降，為什麼？答案只有到農藥使用的第一線去尋找。  ','https://storage.googleapis.com/twreporter-multimedia/images/20170517183929-5973185bd3cb219bac255ebcd7bbdee1-desktop.jpg','https://www.twreporter.org/topics/taiwan-pesticide','2017.5.18'),(25,'藝術・時間','謝德慶：藝術家是作品的見證','春末入夏，威尼斯如潮水開始湧入藝術工作者，島上最東邊的綠園堡區，人聲鼎沸。這是兩年一屆的威尼斯藝術雙年展開幕盛況。這個在名列世界三大藝術盛會之首的藝術雙年展，有「藝術界奧林匹克運動會」之稱。以國家為展出單位的形式，使得它在浪漫的城市氣氛下，瀰漫著高度的政治較勁意味，而台灣自2003年退出「國家館」參展之列後，以「會外參賽者」的身份繼續參展，這期間經歷了什麼樣的蛻變？從台北到威尼斯，《報導者》跟訪了本屆台灣館參展藝術家謝德慶，並在這長達6個月的展期裡，為讀者介紹來自現場的第一手觀察。','https://storage.googleapis.com/twreporter-multimedia/images/20170622111444-2f78deba2cc2bca4494e4a02f9d7afeb-desktop.jpg','https://www.twreporter.org/topics/2017-venice-biennale','2017.6.21'),(26,'20年了　香港，你好嗎？','黃耀明：用我們僅有的自由去創作，如果你不用，就會被拿走','這些年，香港辛苦了。\n在71香港主權移交20年的前夕，\n《報導者》採訪了6位香港跨界意見領袖，\n他們來自金融、新聞、政治、音樂、電影、農業，\n跨越3個世代、參與重要歷史事件，\n有文革、有六四、有九七、也有佔中，\n親歷神氣的香港、物質的香港、士氣低迷的香港，也有被中國化的香港。透過第一人稱的方式，我們帶讀者看見他們的生活日常，\n談過去、現在、未來的香港精神，\n談他們的香港夢。','https://storage.googleapis.com/twreporter-multimedia/images/20170628135007-e83217b13613d112cb19c67f426cf843-desktop.png','https://www.twreporter.org/topics/transfer-of-sovereignty-over-hong-kong-20years','2017.6.28'),(27,'【體檢前瞻】8千8百億遠期支票的3大挑戰','林全：30%前瞻計畫未經可行性評估；自籌款可減少蚊子館','為了經濟成長，8千8百億的前瞻計畫標榜「下一代需要的基礎建設」目標，卻得不到大眾支持。除了各界質疑，數家民調也顯示前瞻計畫的支持度低落。\n\n「蚊子建設」、「地方財政破產」、「土地徵收」是前瞻計畫備受注目的3大挑戰，行政院長林全如何面對質疑？\n\n《報導者》進行專訪、事實查核及系列報導，提供各界檢視這3大挑戰參考。','https://storage.googleapis.com/twreporter-multimedia/images/20170702220823-caae3f86bcb862cd329f57e8eccce2bd-desktop.jpg','https://www.twreporter.org/topics/foresight-infrastructure-plan','2017.7.3'),(28,'體育協會的沉淪與重生','許家班，這樣「經營」泳協','自謝淑薇退出里約奧運比賽一年來，各單項體育協會積習亂象就持續引爆，從網球、排球、羽球、游泳、射擊⋯⋯層出不窮，體育協會因而被網民戲稱是體育「邪」會。行政院長林全在奧運賽後宣示要「全面檢討體育與協會」，但至今還沒有具體作為。封閉許久的體協能如何改變？《報導者》採訪選手、體育協會、學者專家、立委等各方意見，試圖釐清政府監督、各單項協會責任與分野，目前正在立法院等待修法通過的《國民體育法》將是改變的第一步，它真的走對方向了嗎？','https://storage.googleapis.com/twreporter-multimedia/images/20170816165103-51c06f1cca54dd39c567d1ce9e9f5b3f-desktop.jpg','https://www.twreporter.org/topics/taiwan-athletics-problems','2017.8.17'),(29,'長庚急診風暴掀起的藍色革命','燃燒的急診室　鬆動的長庚醫療帝國','革命，往往是擦槍走火；但環境，勢必積弊已久。2017年6月底，長庚醫院為整頓急診將2名前主任免職，47名急診醫師憤而集體請辭，50多家醫療院所公開聲援，從搶救急診到搶救醫療專業，單一醫院的紛爭，發展成全面性的醫療變革聲浪。事件形成的背景到引爆的能量，即是近20年來醫療環境惡化積累的醫療人員巨大焦慮與反彈：醫療機構利潤優先、專業靠邊；被視為「金飯碗」的醫師，一夕間成失業人口的衝擊，醫療工作的使命與核心價值被逼至絕境。藍色，是急診團隊的工作服、也是醫療從業人員現下的心情。長庚「小藍人」用了當年茉莉花革命的「尊嚴革命」口號，喚起醫療專業權及工作權的自覺、為《醫療法》修法補上臨門一腳，形同醫療版的阿拉伯之春，牽動醫療重整的力道，影響與成敗如何？《報導者》推出專題報導深度剖析。','https://storage.googleapis.com/twreporter-multimedia/images/20170821162236-3b587a0f7934616f8ffa410be7928305-desktop.jpg','https://www.twreporter.org/topics/medical-professionals-revolution','2017.8.22'),(30,'窮活在都市邊緣的人們','【圖文故事】溪洲路的「男模」心聲','都市造就成功者，但也排擠了一群受挫者。不幸從狹縫中墜落，掉在底層生活的人們，散落成街友、舉牌工、街賣者…，是都市裡熟悉的陌生人。會否有那麼一天，我們能終結他們的悲劇？\n看見都市貧窮後，下一步，我們究竟能做什麼？','https://storage.googleapis.com/twreporter-multimedia/images/20160815095912-e0f505269219c1faa727106caf6a2b96-desktop.jpg','https://www.twreporter.org/topics/urban-poverty','2017.9.14'),(31,'含冤15年，鄭性澤終獲清白之路','【平反之後】專訪鄭性澤：放下過去那個痛苦的自己','2017年10月26日上午11點，台中高分院宣判「台中十三姨KTV殺警案」被告鄭性澤再審無罪。旁聽席上有人激動擁抱，欣喜他洗刷冤屈，他離開法庭之後說，「今天以前，我是一個沒有明天的人。從今天起，我要重新開始我的人生。」但一路走來，鄭性澤已耗費15年的人生。2002年，鄭性澤被認定為「台中十三姨KTV殺警案」真兇，2006年遭判死刑定讞，但案件疑點重重，冤獄平反協會於2011年投入救援，監察院也於2014年提出調查報告，認為此案包含刑求、案發現場遭破壞、未依標準程序進行槍械鑑識等瑕疵。2016年3月18日，台中高分檢檢察官破天荒地為鄭性澤聲請再審；5月3日，台中高分院裁定開啟再審，並暫時釋放鄭性澤回家，這是他失去自由的第5,231天。隨後歷經11次開庭，鄭性澤終於在2017年10月26日獲判無罪。受害員警蘇憲丕的妻子雖請求檢察官再上訴，但台中高分檢於11月20日公開說明，全案已審酌鄭性澤、蘇憲丕家屬的權益，並顧及法律面、事實面的調查，並盡調查之能事，因此台中高分檢不上訴，全案在21日零時後無罪定讞。至此，鄭性澤案正式成為近5年來，繼蘇建和案、陳龍綺案、徐自強案之後，再一件獲得平反的著名冤案。','https://storage.googleapis.com/twreporter-multimedia/images/20160818160239-a00811d3343ee313048702600506c0e1-desktop.jpg','https://www.twreporter.org/topics/cheng-hsing-tse','2017.10.26'),(32,'金馬54｜導演，你好！','專訪《大佛普拉斯》導演黃信堯──人們拜佛，還是敗給虛無的寄託？','台灣年度電影盛事——金馬獎頒獎典禮將在11月25日舉行。\n《報導者》推出系列報導，專訪此次導演獎項的入圍者。這一年來，《報導者》文化領域持續聚焦華語電影導演，挖掘他們創作的根源。\n他們是，曾經腸枯思竭、內心焦慮、即使拍片拍到手頭拮据、自我推翻又再自我和好，也不放棄心中理想電影並孤注一擲的人。「導演，你好！」藉此向他們致意，也謝謝所有辛苦的電影工作者。','https://storage.googleapis.com/twreporter-multimedia/images/20171114172754-2ecd344171864245568510e9aa9cc5ce-desktop.jpg','https://www.twreporter.org/topics/2017-taipei-golden-horse-film-festival','2017.11.16'),(33,'被消失的革命：敘利亞的血色公民課','敘利亞公民運動──7萬人在廢墟裡蓋起「夢想之城」','6年過去，世界出現一個半殘國家、一千萬人流浪，和一場被遺忘的革命。這是敘利亞，天空是俄羅斯、以色列、美國戰機，地面有8個國家勢力。恐怖份子、軍閥、傭兵佔地為王「維持」秩序，人命如草，正義比空氣還輕。「如果都會死，不如做些什麼吧。」透過網路，裡頭的人這麼告訴我。在被餓死、打死、炸死之前，一千多個公民組織，原來在地下，活出了我們沒看過的敘利亞，還有那場我們忘記的革命。「告訴他們，我們會改變世界，⋯⋯然後讓他們知道，這才是真正的敘利亞革命。」他們這麼交代我。','https://storage.googleapis.com/twreporter-multimedia/images/20171129103114-18c943fa32e01ddc7cc3bb458f6310bc-desktop.jpg','https://www.twreporter.org/topics/bloody-syria','2017.11.29'),(34,'自殺者遺族的漫長旅途','把哀傷放進口袋——聽見自殺者遺族（一）','台灣自殺率在2001年首度達到每10萬人中11.7人，此後未曾低於全球平均11.4人／10萬人，根據2013年WHO報告，更在2005年和2006年連續兩年達到每10萬人中16.6人和16.8人，在全球自殺版圖中列入高自殺率國家之林（≥15人/10萬人）。因應自殺率居高不下的問題，政府在2005年設立自殺防治中心，但至今每年依舊有3到4千人自殺死亡。對於自殺議題的關注，絕大多數僅停留在自殺者身上，化作研究統計數字、成為媒體標題下的悲劇或傳奇，但在每個棄世而去者背後，都站立著更多不被看見的生者，猶如無聲的影子，他們被烙下永遠的印記——自殺者遺族。《報導者》走入三位自殺者遺族的世界，透過不同階段的哀傷歷程，看見掩蓋在迷思與禁忌下的真實經驗，他們分別錄下「現在的自己」對逝去親人說的話，邀請讀者留駐聆聽，那些不因死亡而被切斷的生命連結。最後，我們從自殺防治專業者的觀點，探究現階自殺者遺族支持體系的諸多挑戰與可行模式。','https://storage.googleapis.com/twreporter-multimedia/images/20171201161015-5f0d1e52dd162851faad0a97288ddbcb-desktop.jpg','https://www.twreporter.org/topics/walk-with-survivor-of-suicide','2017.12.11'),(35,'在路上','創作的路，人生的路','在路上，是狀態、過程、是進行式。對創作者而言，在（創作）路上的所感所思，難以向外人訴，可能痛，但快樂著，或許焦灼難耐，卻無可自拔。那滋味究竟哪般，誰不好奇？【在路上】試著將那模糊失焦的拉近清晰。','https://storage.googleapis.com/twreporter-multimedia/images/20160818173659-13d70f51bc8e5783e73a98ae981dc7e9-desktop.jpg','https://www.twreporter.org/topics/ontheroad','2018.1.2'),(36,'長照機構裡的大象——10萬老人被照顧的真相','賠錢、超收、低價競爭──惡性迴圈中被綁架的長照品質','長照機構裡，跌下樓梯的老人，兩小時都沒被發現，監視系統又正巧在維修；入夜的機構，老人被綁在床，為什麼長輩到了專業的照顧機構，卻越來越失能？全台灣長照機構有10萬個床位，躺的可能是我們的父母，或是未來的我們。然而，在這個「家」裡，卻普遍有隻被視而不見的「大象」——人力不足、照顧觀念錯誤而貧乏，導致機構淪為照顧品質低落、人人聞之色變的牢籠。「長照機構裡的大象」專題，揭露為何政府善意的政策，成為長照機構品質惡性循環的幫兇？評鑑，是最後防線，但卻淪為一場大戲。\n他們說的「優等」，你信嗎？別讓尿布和約束帶，陪伴老人走過最後一段歲月。\n「自立支援」有可能是解除鐐銬的契機嗎？','https://storage.googleapis.com/twreporter-multimedia/images/20180128154549-88472c8670113f80916620a29b4bf00e-desktop.jpg','https://www.twreporter.org/topics/nursing-home-truth','2018.1.30'),(37,'他鄉的團圓菜','西藏獨立之前，不奢望過年','當「家人」成為餐桌外遙遠的想像，\n「過年」一詞甚至是老家日曆上找不到的節日，\n家人缺席的農曆年，他們在異鄉重啟團圓菜的滋味。「他鄉的團圓菜」是《報導者》首次推出的過年企劃，\n4位記者們走訪了在台藏人、越南移工、離開部落生活的布農族青年，\n與離家20多年的同志三溫暖店老闆。\n在這家家戶戶熱氣蒸騰、滿桌佳餚的團聚時刻，\n入鍋的是食材，上桌卻是記憶。都是異鄉人，吃一口家鄉菜。','https://storage.googleapis.com/twreporter-multimedia/images/20170125175140-d30f92e5587c4a594420b10f8851ce30-desktop.png','https://www.twreporter.org/topics/reunion-dinner','2018.2.14'),(38,'潘小俠「見證228」影像計畫','台灣人權史上最黑暗的一頁','從1947年二二八事件發生到1987年二二八公義和平運動開始，台灣人權史上最黑暗的一頁被塵封長達40年。儘管1989年後陸續朝建碑、道歉、賠償、撫慰等方向努力，但這些都只是起步而已。2011年，在受難者、遺族及各界關懷者的期待下，二二八國家紀念館正式開館，二二八平反運動也自此邁向了新的里程碑。 2017年是二二八事件發生第70個年頭，《報導者》連載刊登「見證228」。這是人權攝影家潘小俠、人權及文史工作者陳銘城和白色恐怖受難者楊碧川，從2010年4月開始，截至2014年5月，以紀實影像手法進行的拍攝計畫成品。這個計畫採訪拍攝了228位受難者、遺族及家庭，以「肖像攝影」等獨特敘事帶領觀者直視與接近每個故事。當然，每個故事早已超越個別故事自身，成為台灣當代歷史與文化圖層中不可或缺的重要脈絡。','https://storage.googleapis.com/twreporter-multimedia/images/20170220145350-74acaada31d04f11007095416ace592f-desktop.jpg','https://www.twreporter.org/topics/228-photos','2018.2.23'),(39,'2018 Wonder Foto Day','2018 Wonder Foto Day──在現實中探尋攝影視野','以台灣為中心，集結亞洲各地攝影創作者的年度盛會──2018 Wonder Foto Day，即將於3月16日到18日在台北舉行；《報導者》在盛會開展之前，為您線上策展34位參展者作品，以及東京國際攝影節得獎作品，好作接連不斷，給你滿滿的視覺饗宴。','https://storage.googleapis.com/twreporter-multimedia/images/20180222222017-094e3da51ca8f796bbed29de8b16b827-desktop.jpg','https://www.twreporter.org/topics/photo-2018-wonder-foto-day','2018.3.2'),(40,'每天我們失去5個孩子——搶救兒童高死亡率','生得少，卻死得多——搶救我們「枉死」的孩子！','不到1,000公克的巴掌天使，完成腸子修補手術，細若手指的小腳在保溫箱裡微弱地顫動，那是他為了活下去的努力。加護病房外，「95！95！」的急救代碼廣播響起，母親心碎的哭聲畫破醫院長廊的寂靜，那是一個小生命消逝的聲音。   每一天，有5個孩子從台灣離去，多少孩子儘管羸弱仍有求生本能；除了重大先天疾病，早產、急症或溺水、墜樓、車禍的孩子都有機會被救治或防範，只因居住的地方沒有兒科醫療、家庭經濟弱勢無法就醫，或因安全教育及防護不足而「枉死」。台灣19歲以下兒童死亡率，25年來降幅落後世界平均值、是已開發國家的後段班。兒童急重症科醫師老化凋零、在後繼無人中「爆肝」；提供24小時兒童急診的醫院持續消退，家長半夜抱病兒可能求助無門；守護巴掌天使的新生兒科醫師無償外接轉診病兒、風險得自扛；站在兒虐最前線的兒少保護醫療工作者，往往只能義務「做功德」；擔負重症醫療最後線及創新技術、世代健康研究任務的四大兒童醫院，都因經費不足而「玩假的」。   比起催生，改善兒童高死亡率是更為急迫的人口戰役！《報導者》採訪團隊從都會走進偏鄉，從醫院體制到國家政策，解析兒童照護如何貧窮化、零碎化，檢視醫療及社會防護的破網。   「謝謝你，來到這個世界！」10年前，日本正式成為人口負成長國家時，有老人對公園裡嬉笑玩耍的孩子敬禮、致謝。2017年，我們少了15,000個新生兒、卻有1,800多個孩子死亡，步日本後塵，死亡人口超越出生人口，我們如何以更關注兒童生命與健康權益的方式，對孩子說一聲：「謝謝你們，來到台灣！」 ','每天我們失去5個孩子——搶救兒童高死亡率','https://www.twreporter.org/topics/child-health-care-taiwan','2018.4.2'),(41,'台灣，危險之島','夾層裡的6條人命——蘆竹大火暴露移工安全漏洞','去年12月，一場燃燒8個小時的大火，刺痛所有移工最深的恐懼。桃園蘆竹的移工宿舍火災，最終造成6人死亡、5人重傷，又是一樁魂斷異鄉的悲劇。移工的臉書群組裡，開始紛紛討論台灣工作有多危險，大家相互提醒要注意安全。比起「賺錢天堂」，現在對移工們，台灣更多是「危險之島」的印象。據台灣官方統計，近10年已有1,540名移工喪生在台灣，這還不包括逃跑移工死亡的黑數。若以越南移工為例，越南移工在台灣的死亡率是越南移工在日本的2倍。台灣，普遍被旅客認定是安全的國家，何以變成移工眼裡布滿生死危機的島嶼？','https://storage.googleapis.com/twreporter-multimedia/images/20180413150516-e6bb687e519388dc9d75f5d841297d45-desktop.jpg','https://www.twreporter.org/topics/migrant-workers-death-in-taiwan','2018.4.17'),(42,'紀錄的邊界','2018台灣國際紀錄片影展專題','兩年前，台灣國際紀錄片影展（TIDF）推出「如果紀錄有顏色：綠色小組30週年」放映單元，《報導者》以此為題，走訪成立綠色小組的前輩們，完成系列報導。兩年後的此時，再次面對這個野心茂盛的影展（根據官方資料，為期10天，共170部影片與超過200場放映），如何從高濃度的片海中撈取觀看視角，或「如何報導一個影展」，前者是給觀眾的挑戰，後者則是自問的課題。由點鋪開成面，我們在眾多單元中拉出兩條報導軸線：其一為焦點單元「憂傷似海：東南亞真實之浪」，除了專訪單元選片人葛江．祝鴻 （Gertjan Zuilhof） ，也首次由《報導者》的筆者在看完35部影片後，「再選出」其中15部片加以重組對照，以此與影展做出對話，並提供觀影的可能與趣味。其二，延續前年對「綠色小組」的關注，本次以「不只是歷史文件：港台錄像對話1980-90s」單元為本，嘗試梳理港台錄像創作的過去與現在，包括訪談香港民間單位Videotage，談典藏計畫的甘苦（相關報導於5/9上線）。另因應此次《閱讀飢餓》劇場演出，邀請中國獨立紀錄片導演吳文光撰文，談「民間記憶計劃」始末。「我一直在乎做為2018年的策展方，怎麼看這些影像、怎麼跟當代的觀眾溝通？」這是TIDF策展人林木材思索的——永遠試著尋找新的可能。而這也是互通的命題，策展如是，報導如是，創作尤其。在已知裡重整，也在未知裡持續踩踏，只為再一步一步，推移邊界的線。','https://storage.googleapis.com/twreporter-multimedia/images/20180506155402-b223df54d1ea095d350f1792c349313a-desktop.jpg','https://www.twreporter.org/topics/tidf-2018','2018.5.7'),(43,'跨國追蹤：HPV疫苗政策下的黑布','台灣首宗訴訟案揭黑布：HPV疫苗全面公費接種的陰影','宣稱「打三針、護一生」的人類乳突病毒疫苗（human papillomavirus vaccine，簡稱HPV疫苗），有效預防女性子宮頸癌，是預防醫學重要的里程碑。但這支有史以來最昂貴、且唯一不是用於防治大規模感染風險疾病的疫苗，同時也打出公共衛生、藥政管理及藥害監控上新的挑戰與難題。有效，是醫藥發展和國家政策追求的唯一目的與答案嗎？今（2018）年11月，衛生福利部將擴大HPV疫苗政策，國一女生全面免費接種。在國家整體癌症防治預算緊縮下，加碼投入死亡率已「下降中」的子宮頸癌症，這項政策「利多」背後，一來引發預算分配適當性的質疑；二來在日本、歐洲、美洲甚至台灣，不斷出現疑似嚴重不良反應事件，疫苗與少女自體免疫間是否存在未知的「蝴蝶效應」，更是不該被忽視的科學謎題。《報導者》獨家披露台灣首宗HPV疫苗訟訴案，並展開跨國採訪、進行國際資料比對，從這些不同國籍女孩兒的病發歷程、社會壓力背後，層層揭開在疫苗有效性強力宣傳下，被掩蓋的預算分配公義、不良反應系統缺失及紊亂的巿場問題。','https://storage.googleapis.com/twreporter-multimedia/images/20180506163536-04271ba77bff71d71694cb12c8592048-desktop.jpg','https://www.twreporter.org/topics/hpv-vaccine','2018.5.10'),(44,'巨人轉身——德國汽車的創新再起之路','熬過「柴油門」醜聞，德國汽車廠向特斯拉下戰帖','能源轉型，這個不斷被各界提及的趨勢，很有可能在未來5年內，就刷新了日常食衣住行的面貌；其中，「行」的創新產品和應用，更可能改變節能、空汙等現象。對此未來想像的推手之一，是3年前還深陷柴油引擎數據造假醜聞的德國汽車工業。汽車和足球，曾是德國人在國際最威風的「面子」。當汽車工業因自家醜聞跌落深淵，又面臨特斯拉（Tesla）電動車創新風靡全球、撼動多年汽車霸主之位的挑戰，實事求是的德國人，將如何讓傳統的巨人從跌倒之處站起、轉型、取回民眾信任？這個答案，不僅牽動全球經濟版圖，也牽動這個世界的未來風貌。','https://storage.googleapis.com/twreporter-multimedia/images/20180516124528-45da987ff5cca1aca362aeeab3921aea-desktop.jpg','https://www.twreporter.org/topics/german-automotive-industry-transformation','2018.5.17'),(45,'島內的世界盃','【下半場】','每4年一次，世界就有一回7級大震，\n那是世界盃足球賽的「正常能量釋放」。\n台灣，不在震央中心，\n也總會跟著搖擺。我們的足球夢，跟別人不一樣。\n\n4年、4年又4年，\n一波一波又一波尋夢的孩子，\n不斷嘗試以青春熱血把官方的大話變神話；\n\n4年、4年又4年，\n一群一群又一群的外國朋友替台灣拼經濟的同時，\n在這片足球荒漠上栽種出南國豔色的花朵。4年、4年又4年，\n我們在世足大震的版塊挪移裡跳腳嘆息、也奮力前行，\n只要再往內圈靠近一點，一點、再一點點，便足矣。★繼續觀戰：【上半場】、【PK賽】★','https://storage.googleapis.com/twreporter-multimedia/images/20180611120040-cba994fdbae0486849ce1b93bcc26fcf-desktop.jpg','https://www.twreporter.org/topics/2018-fifa-world-cup-2','2018.6.11'),(46,'大明星鬥陣','【PK賽】','「伴侶可以換、工作可以換、支持的球隊不能換。」\n這是偏執足球迷常掛口邊的戲言，\n對足球的信仰和忠誠，就像父母和故鄉，永誌不渝。支持的明星亦然，\n感性與理性不必然要取得平衡，\n你就愛梅西比技法更強大的專注力、\n你就愛C羅以張狂豪放加乘了才情、\n你就看見了蘇亞雷斯咬人背後更深沉的隱意、\n你一生誓死替馬拉杜納的「上帝之手」辯護、\n或是一直醉在羅納度外星人步伐裡不願醒來、\n或在席丹以頭槌被判下場而非入網中長嘆息⋯⋯你有權口出狂言，\n也絕對准許恣意妄行，\n在支持你心中「足球之神」這事上，\n永遠沒有「紅牌」。★繼續觀戰：【上半場】、【下半場】★','https://storage.googleapis.com/twreporter-multimedia/images/20180611120107-3d29283ba9de336d38b853f3a91446c1-desktop.jpg','https://www.twreporter.org/topics/2018-fifa-world-cup-3','2018.6.11'),(47,'足球大江大海','【上半場】','世界上最通用的語言，不是英文、不是漢語，\n是足球。\n地球上，平均每2個人就有1人，會聽說讀寫「足球語」——\n用身體、血液及信仰，詮釋自己的世界觀與人生哲理。足球是敲開族群、國土疆界的萬用鎖，\n也是統治、箝制國族與種族最強的兵器。\n2018年世界盃足球賽開踢，\n此刻全世界「時區」及「會話」統一，\n正是透過足球深度「閱讀」與「校正」，\n因地域與族群不同而產生的歧異，\n最佳時機。★繼續觀戰：【下半場】、【PK賽】★','https://storage.googleapis.com/twreporter-multimedia/images/20180611113103-2a2c1cbba16cca0e6d74d8cbca8ed2cf-desktop.jpg','https://www.twreporter.org/topics/2018-fifa-world-cup-1','2018.6.12'),(48,'工會之戰——華航罷工兩年後的瓶頸','罷工2年後的華航：漠視勞裁，一手給糖一手興訟','2年前，華航空服員發動合法罷工，不到24小時，針對勞方提出的7點訴求，勞資雙方立即達成協議。有人說，這是一場「美麗」的戰爭，也有美麗的結局。但2年後看，事實是如此嗎？當時7點協議，有1項未如實執行，工會與華航正在訴訟中。罷工前，工會幹部有4人曾被公司懲處停飛，但很快恢復原職；罷工後，2年內有6人被記過，2人被約談，資方抑制工會手段越來越檯面化。2年來，雙方越加短兵相接。在對峙升高下，工會能如何突圍？','https://storage.googleapis.com/twreporter-multimedia/images/20180621164202-d5df35ca33e9513cd3a147565f4bf1e4-desktop.jpg','https://www.twreporter.org/topics/after-china-airlines-strike-union','2018.6.22'),(49,'流浪的早療兒','誰是慢天使的麥田捕手？','據估計，台灣6歲以下的孩子，近22萬名因發展遲緩或身心障礙需接受早期療育；然而，目前在健保體系下接受早療的孩子僅5萬1千多人。3歲前的早療黃金期是國際定律，台灣卻可能有多達四分之一的孩子，一起步就流失他們生命發展的「黃金」。2016年全台醫療院所中，執業的諮商心理師僅194人、聽力師258人、語言治療師只有741人，而離島、花東屏東的早療專業人員不是掛蛋、就是個位數。這些慢飛天使擠不進醫療體系窄門，又總在能量不足的特殊教育和日托照護機構間流浪，受教育和受照顧的權利被嚴重剝奪。《報導者》在2018年4月推出第一波兒童醫療專題《每天我們失去5個孩子——搶救兒童高死亡率》，提出兒童急重症醫療體系與資源斷裂與缺口，此次再探索兒童早期療育的現況：花蓮唯一的兒童發展中心，經營19年的門諾基金會要脫手，13名多重障礙兒不知何去何從？台東靠著一支行動早療團隊，即使累積出繞行地球7周的行腳路程，照顧到的早療兒仍不及需要的百分之一；一個罹癌的父親，為了一對自閉症兒子，曾經花17小時環島就醫，每一天都在與不足的資源、有限的時間奮鬥⋯⋯。聯合國兒童基金會（UNICEF）強調，兒童的健康幸福最容易受政策所影響。從兒童急重症醫療到早期療育，每一個病家的困境與呼救，都是台灣幸與不幸的關鍵。','https://storage.googleapis.com/twreporter-multimedia/images/20180625204547-f3e8133761215cc2a81d1229cf6fe488-desktop.jpg','https://www.twreporter.org/topics/child-early-intervention','2018.6.26'),(50,'被外包掉的工地人命安全','20大營造廠5年違規逾500件，職災累犯卻工安獎入袋','台灣每年有300多人因職災死亡，其中45%是工地工人。\n這群勞工，暴露在最危險工作環境中，但人身安全得不到保障。工地裡，多重承攬外包的複雜體系，工安成為三不管地帶，\n台灣前20大營造廠，過去4年多，工安總違規次數超過500件，\n其中15家都曾發生死亡重大職災。\n最具規模公司尚且如此，遑論其他中小型企業。工地工人也是生活在社會底層的人，\n層層外包下，沒有明確雇主，沒有勞健保，\n一旦發生職災，生活立刻陷入困頓。諷刺的是，這些屢屢違規的營造廠，卻是政府工安獎常勝軍，\n你說，台灣社會真的在意弱勢勞工的安全嗎？','https://storage.googleapis.com/twreporter-multimedia/images/20180706112123-253c4901597dfa3d1b396f4af61165f7-desktop.jpg','https://www.twreporter.org/topics/construction-industry-job-disaster','2018.7.10'),(51,'六輕營運20年：科學戰爭下的環境難民','六輕污染為什麼測不到？測到也不算數？','他們是一群被放逐在自家土地上的環境難民。西瓜再不結果，文蛤無影無蹤，村中人口流失，葬儀社卻越開越多，救護車鳴笛響徹夜間，彷彿死神晚點名：肺癌、肝癌、乳癌、血癌、肺腺癌⋯⋯，荒村中幼無所養，壯無所用，老不得善終。他們的鄰居，是全世界單一最大的石化園區——台塑六輕，上百種化學製程，煙囪日夜吞吐不休。運轉20年來，帶來上兆產值，那是十隻手指頭也不夠數的天文數字。鄰居帶來的GDP太重要了，拚經濟如雷貫耳，難民的呼喊，無人聽聞。豎起在環境難民面前的那道銅牆鐵壁，叫做「傲慢與粉飾的科學」。六輕的污染為什麼測不到？測到了也不算數？因為這是一場中央部會為難地方政府的科學戰爭；六輕的污染為什麼沒有定論？學者之間爭論不休？背後則是產學聯手製造的科學煙霧彈。「難民」並非有家歸不得，而是走也走不了，在自己的土地上流浪。空污的傳播比什麼都厲害，無遠弗屆，無人得以倖免。最後想問一句：你，也是環境難民嗎？','https://storage.googleapis.com/twreporter-multimedia/images/20180123175443-aea7a0d9adceea44182a74f3fdc93c38-desktop.jpeg','https://www.twreporter.org/topics/fpc-sixth-naphtha-cracker-20-years','2018.7.30'),(52,'煉雲者們──透視安溥演唱會','開始之前：陳玠安的安溥《煉雲》演唱會備忘錄','2018年5月，安溥首次登上小巨蛋，演唱會結束後各種心得與討論浮現，使得《煉雲》成為當今樂壇一種思考大型演唱會「還可以是什麼」的例外途徑。然而，讓事情看起來「可以不一樣」，除了台前可見的設計與安排，還有台後看不見的製作思考，以及將之推動成事的「煉雲者們」。《報導者》自年初從旁觀察《煉雲》籌備，訪談包括歌手、樂手群、音控師、導演、燈光、雷射與多媒體視覺團隊。嘗試以此專題透視演唱會幕後，也為台灣樂壇留下一份不是所謂成功法則，而是更多選項可能的書寫紀錄。','https://storage.googleapis.com/twreporter-multimedia/images/20180807133829-6749efb1522a871bb158c1277a8c5f91-desktop.jpg','https://www.twreporter.org/topics/anpu-concert','2018.8.14'),(53,'廢墟裡的少年','兩萬名被遺忘的高風險家庭孩子們','他們是一群被政府和社會忽略的存在，兩萬名活在「高風險家庭」下的少年。這群少年，無法選擇自己的家庭、生活條件，他們因家人貧困或重病或入獄等各種的不幸運，而命運多舛。其中有為數不少的人中學就輟學，從學習脫隊；也有不少的少年進入政府設立的安置體系，但在結束安置後很快被丟回社會，連社工都不知道他們去了哪裡；有些少年為了糊口、或為了脫離家庭施加的暴力和壓力，被迫成為童工或少年工。他們在農場與工廠裡搬運、做水泥工助手、裝潢助理、舉牌人、婚宴廣場服務生、夜市叫賣者、洗頭小妹、便利店店員⋯⋯，他們完全逸出法律規定，在勞動體系裡被雇主或工作環境剝削。我們在這群少年身上，目睹貧窮如何一代代複製。這系列的深度報導，從影像到文字，試圖帶讀者從少年的視角出發，了解他們在困頓中如何努力工作與生活。但除了看見和挖掘真相，我們仍要追問，台灣的社福體系、教育體系、勞動體系如何遺漏了這群邊緣少年？公部門能怎麼提供合其所需的政策？社會與企業如何為他們打開機會之門？（本專題已集結成《報導者》第二本專書：《廢墟少年：被遺忘的高風險家庭孩子們》） ','https://storage.googleapis.com/twreporter-multimedia/images/20171030144550-2096e789f6f0c73b226bd22f97b624c7-desktop.jpg','https://www.twreporter.org/topics/high-risk-youth-left-in-relic','2018.9.12'),(54,'雙面傅崐萁','傅家王朝接班人　徐榛蔚與傅崐萁「共治」花蓮','花蓮縣長傅崐萁有2個稱號，顯示台灣社會對他的極端看法。\n「五星縣長」，證明他在花蓮基層民眾中的高人氣，是一名閃亮的政治明星；「花蓮王」，則形容他行事作風的霸氣與爭議，讓他在知識份子與社運團體間備受抨擊。由於花蓮地方近年盛傳傅崐萁引介中資買地，《報導者》記者於今年5月起開始調查，發現傅崐萁及家族在「理想大地案」中，涉及引介中國國營企業「北京控股集團有限公司」來台買地。\n （按：北控集團至今尚未買下理想大地土地） 至於理想大地業者控告傅崐萁、花蓮縣政府秘書長顏新章涉犯《貪污治罪條例》中藉勢或藉端勒索財物罪的「理想大地案」，則在2016年10月26日由花蓮高分檢發回花蓮地檢署續查，此案仍在司法調查程序中。從涉及引介中資來台買地，到傅崐萁的形象塑造、政策爭議、家族勢力，都是值得關切的公共議題，《報導者》因而製作「雙面傅崐萁」專題，從中資篇、形象篇、政策篇、家族篇等四個面向，觀察與解讀台灣政壇特殊的「傅崐萁現象」。※編按\n2017年10月6日花蓮地檢署偵查終結，認定傅崐萁為榮亮公司實際負責人，卻在庭訊時虛偽陳述；執行土地交易買賣，買地再轉售賺取1億6千餘萬元價差，涉逃漏稅9千多萬元，檢方以偽證及逃漏稅嫌追加提起公訴，但貪瀆罪部份查無證據不起訴。另外，傅崐萁涉炒作合機股票案歷經多年纏訟，最高法院於2018年9月12日駁回上訴，全案定讞，判刑8個月。隔日，傅崐萁收到縣長解職令並即刻生效 ，縣長一職也將由中央指派代理。 ','https://storage.googleapis.com/twreporter-multimedia/images/20170306232901-7b800e0104d93ee7c2756491803b8644-desktop.jpg','https://www.twreporter.org/topics/hualien-fu-kun-chi-two-face','2018.9.13'),(55,'金錢輿論','帶風向、假訊息、網紅生產，我們怎麼明辨真假？','全球正在面對一個敵我難辨的言論戰役。假訊息（disinformation）像是看不見的敵人，潛伏在言論市場與網路耳語，伺機操弄輿論的風向。不少政府、政黨、企業，開始有組織且系統性的作戰；他們授權行銷公司，以程式開發虛擬的網軍部隊，創造大量假帳號，遊走網路與真實世界互動；他們用言論帶風向，有時是鞏固基本盤，有時則是散佈不實和片面訊息，創造有利自身的聲量，甚至是惡意分化社會。網路授與人類文明史上言論最自由奔放的年代，但也讓人們受害。俄羅斯、巴西、墨西哥等地的假新聞工廠，帶給歐美層出不窮的言論暴力與傷害，甚至左右了政治選舉。而近來台灣社會也因流竄在社群媒體上的假訊息和人工引導的不實輿論，捲起社會的騷動與紛擾。今年以來，《報導者》試著深入理解這個亂象，一探台灣政界與商界以金錢操作輿論風向的面貌。究竟，金錢打造的輿論如何在台灣生根？假訊息的全球生產鏈如何成形？而我們又該怎麼面對言論自由市場的沉淪劣化？','https://storage.googleapis.com/twreporter-multimedia/images/20180925100001-9995297aa32b9ca9de27d5007f0d134f-desktop.gif','https://www.twreporter.org/topics/disinformation-manufacturing-consent','2018.9.27'),(56,'病床邊的照護危機','一年660億住院看護需求，誰來把關？','家人急重症住院治療，看護和照服員自己找、費用自己付，一旦不幸發生照護意外，沒有單位可究責或仲裁，家屬只能自己去打官司「私了」，病家無助；但沒有雇主的看護和照服員獨自承擔所有風險，又何辜？這正是台灣現今醫院病床邊的實況，住院照護成為醫療體系中無人把關、甚至無從監測的巨大黑洞。照護「黑洞」規模有多大？依2017年健保署統計，全年國人住院近340萬人次、平均每次住9.55天，醫院裡一對一看護需求和成本估計一年高達660億之多，這筆龐大的需求和支出，民眾的醫療帳單上找不到、醫院評鑑和管理項目中也沒有，卻每分每秒在噬食台灣整體醫療品質、耗竭無數家庭的經濟與精神負擔。《報導者》費時3個月，進行全台醫學中心大調查，揭露19家規模最大、收入最高及人員配置最頂尖的醫學中心，13家都把醫院照服和看護工作外包的運作方式，抽佣、收租，而政府對相關收費、資格、品質的標準三不管。而這些病房現場的背後，是一個一個飽受折騰與犧牲的照護人生：為照護父母付盡自己青春與積蓄的流沙中年、穿著制服穿梭醫院但疫情嚴峻時連口罩都領不到的照服員⋯⋯。2003年SARS時期，2位看護工及4位家屬不幸染煞身亡的殷鑑，我們徹底遺忘了，讓住院照服與看護工作淪醫院「陪病經濟」業外收入，但高齡化和少子化雙面夾擊下，台灣全體社會付出的後果與成本將愈來愈沉重。有一天，當我們生病時，花不花得起錢請看護？誰來當我們的看護？住院照護缺漏的一角，台灣還有多少本錢繼續漠視？ ','https://storage.googleapis.com/twreporter-multimedia/images/20181105222202-fe3b5b9b89da5152dc6c2f593cd1a53a-desktop.jpg','https://www.twreporter.org/topics/nursing-aide-crisis-of-taking-care','2018.11.7'),(57,'金馬55幕前幕後｜從微光到大師','讓年輕人上來！金馬電影學院十年有成','當電影終於完成，走向影展面對評審、進到戲院面對觀眾，那些創作過程中曾有的掙扎與艱難，已久遠到像一則被遺忘的古老祕密。透過專訪，他們再次說出那些祕密。第55屆金馬獎，《報導者》訪談多位影人，包括導演、新導演、演員與攝影獎項的入圍者，透過他們的談話，聽見大銀幕以外的況味。此外，由導演侯孝賢創辦的「金馬電影學院」，10年來培育無數華語電影創作者。今年《報導者》走進金馬學院幕後，一探電影誕生前的細節與精髓，見證資深電影工作者的身教傳承，與年輕創作者一起磨出光輝的劍。','https://storage.googleapis.com/twreporter-multimedia/images/20181116182741-32fd501f17734251f1ace391b6a4dad5-desktop.jpg','https://www.twreporter.org/topics/2018-taipei-golden-horse-film-festival','2018.11.16'),(58,'地方選舉的光與影','【里長篇1】小黨生存保衛戰！參選村里長成為救命符','2018九合一選舉即將於11月24日投票，這場選戰將呈現台灣民主發展的最新變化。美國前衆議院議長歐尼爾（Tip O\'Neil）的名言「所有的政治都是地方政治」，顯示地方選舉才是民主政治的動員核心。《報導者》由此出發，從最基層的村里長選舉切入，探討本屆為何有高達27個政黨投入里長選戰？這次選戰又為何成為這些小黨的生存保衛戰？　來到上一層的縣市議員選舉，五花八門、弊端叢生的議員「配合款」制度，真的是地方政治中的「必要之惡」？打開配合款的潘朵拉盒子，民眾可以看見什麼？資訊公開之後，選民如何投下關鍵一票？ 再來看「歐巴桑聯盟」代表的女性參選風潮，這群親子共學團體出身，歷經家庭小革命後才得以參選的媽媽們，如何以具體行動挑戰不合理的選舉保證金制度？她們能否召喚女性參政的新希望？進入最基層的選舉，才能看見台灣地方政治生態的光明與黑暗。讓我們由下而上，一步步看見「所有的政治都是地方政治」的真實面貌。','https://storage.googleapis.com/twreporter-multimedia/images/20181117190643-71899b4a4f2d71aec9e1640bd4e52df7-desktop.jpg','https://www.twreporter.org/topics/2018-local-election','2018.11.19'),(59,'今天台灣很政治：2018九合一選舉結果觀察','九合一選舉全台選前之夜──照亮選民之眼','選舉結束，候選人幾家歡樂幾家愁。今夜過後，我們要面對什麼樣的台灣？藍綠政治版圖重組後，如何看待台灣民主的最新面貌？全台矚目的「韓流」現象，讓高雄發生了什麼樣的變化？選前熱鬧無比的網路聲量，是否成功轉化為實際選票？國外媒體又如何解讀此次台灣選舉結果？洋洋灑灑的10個公投案中，如何看待激烈對峙的挺同、反同公投案結果？不同族群的公投傾向有什麼差異？此次公投對於台灣社會又有什麼意義？《報導者》透過現場觀察、即時短評、圖文故事、資訊圖表、深度評論等，多元呈現選舉結果解讀，並觀察選後台灣社會的走向。  （選舉前哨分析，請見專題「地方選舉的光與影」）','https://storage.googleapis.com/twreporter-multimedia/images/20181123215802-3deca7cc655af6d29aeb02e85acd7803-desktop.JPG','https://www.twreporter.org/topics/2018-election-report','2018.11.24'),(60,'生命權與死亡權的相對論','從搖籃到墳墓，由巨塔入巿井──怪醫江盛的安樂死立法之路','今夜\n無月\n海一片漆黑\n岸也漆黑\n我該等太陽\n還是月亮？生命向晚，如何才是抵達安詳彼岸之徑，是自古難尋的解答，一如伊朗詩人導演阿巴斯．基阿魯斯達米（Abbas Kiarostami）的詩篇〈隨風而行〉所述。臨終「醫療選擇」是人們最難下定的決心，也是最難達成的「共識」──無論家庭或社會。 隨著高齡化社會後「多死時代」來臨，安寧療護與安樂死（醫助自殺）辯證更為激昂，安寧療護把死亡視為生命的一部分，不延續無效醫療、但照護到病人自然死的最後一刻，講求「生命權」；安樂死則主張生命一旦過於不堪，應有主動喊卡的自主權利，講求「死亡權」。「生命權」與「死亡權」的選題，考驗的不只是醫療能量、法律制度、更是家庭價值與人生哲學。 《報導者》 藉由推動台灣第一個安樂死公投的婦產科醫師江盛、因家庭照護風暴而梳理父子親情的皇冠出版社社長平雲的經歷與體悟，凸顯善終與照護不同的信仰與掙扎；並盤點全台安寧病房及人力，呈現目前全台安寧資源「四缺」的窘況，善終在台灣，如同「天邊的彩虹」，好美、卻好遙遠⋯⋯ 。台灣社會要一起思考的是：安樂死的需求，是善終不該迴避的選項？還是臨終照護不被滿足的出口？','https://storage.googleapis.com/twreporter-multimedia/images/20181206170820-2ec92e64a6e4a2a8bc97ca4973ad8477-desktop.jpg','https://www.twreporter.org/topics/good-death-debate','2018.12.12'),(61,'海上人口販運風暴','向世界買賣漁工──台灣為何成為人口販運的幫凶？','你所看到的圖片，是由一張張上到台灣遠洋漁船作業的漁工臉孔組成。他們來自世界16個國家，為了改變命運，把自己的護照和身分，交給台灣的仲介和船東，台灣人則向世界最貧窮的國家如北韓、柬埔寨、坦尚尼亞等國家買漁工。這2萬名低價、多國籍的漁工，就像一個個商品，為了掙一個月300、400美元的低薪，承擔高風險上船，有時會遭遇非人化的待遇。\n\n2016年底《報導者》「造假・剝削・血淚漁場」調查報導上線後，引發各界對遠洋漁場上的濫捕與人權剝削議題的重視。我們持續調查，卻發現不少漁工至今得付出更多「紅包錢」上船、台灣漁船仍有不少未登記的幽靈漁工⋯⋯我們訪問被強迫勞動、甚至被販運至船上的漁工們，那些無法復元的創傷，以及至今的生活。\n\n這次的跨國調查，《報導者》去了柬埔寨，同時採訪擴及菲律賓、印尼、新加坡、紐西蘭、日本。我們也排除萬難，進到柬埔寨監獄採訪被判人口販運的主角。究竟震驚美國國務院與世界人權組織的「巨洋案」，是如何讓台灣一不小心陷入人口販運的風暴？仲介與船東的金流方式為何最終壓垮了漁工？又為什麼台灣有數不清的權宜船和幽靈船主？\n\n台灣以人權國家自居，當這一切攤在眼前，政府如何能再視若無睹？我們該怎麼避免讓漁工們成為現代奴隸？產業又如何跳脫剝削的商業模式繼續下去？\n\n邀請你跟我們一起閱讀這系列的影像與文章。','https://storage.googleapis.com/twreporter-multimedia/images/20181218141913-a0926556fee70c312d3479a60101914c-desktop.jpg','https://www.twreporter.org/topics/slave-fishermen','2018.12.19');
/*!40000 ALTER TABLE `new_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photography`
--

DROP TABLE IF EXISTS `photography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photography` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tag` varchar(225) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `img_url` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photography`
--

LOCK TABLES `photography` WRITE;
/*!40000 ALTER TABLE `photography` DISABLE KEYS */;
INSERT INTO `photography` VALUES (1,'劉子正／新紀實攝影的樣態','影像．聲音','女性紀實攝影師Daniella Zalcman在不久前的評論文章〈紀實攝影需要⾰命〉 （Documentary photography needs revolution），文中特別提到幾個對於「紀實攝影」所面臨的困局，我在這裡加以延伸談論一下這些論點。','https://www.twreporter.org/images/20181224235435-fc542dfd22dd1400513e71470a725f01-tablet.jpg','https://www.twreporter.org/a/photo-pattern-of-new-documentary-photography','2018.12.26');
/*!40000 ALTER TABLE `photography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  `article` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'Post 3','Health & Wellness','2018-12-14','<p>this is the post 3</p>\r\n'),(4,'Post Four','Web Development','2018-12-15','<p>this is post four</p>\r\n'),(5,'Post Five','Web Development','2018-09-18','<p>this is the post five</p>\r\n'),(6,'Post Six','Tech Gadgets','2018-12-18','<p>this is post six</p>\r\n'),(9,'Post 10','Web Development','2018-12-16','<p>This is post 10.</p>\r\n'),(10,'Post 7','Tech Gadgets','2018-12-16','<p>This is post 7</p>\r\n'),(11,'修真四萬年','Health & Wellness','2019-01-18','<p>0.00</p>\r\n');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid_idx` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'iPad Pro. 12.9-inch 64GB',2,999,20),(4,'iPad Pro. 12.9-inch 512GB',2,1299.99,10),(5,'Galaxv Note 9. 6GB/128GB',7,748.89,15),(6,'Asus 5Z. 6GB/128GB',3,519.76,30),(7,'Dell XPS-13. 8GB/256GB',NULL,868,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  KEY `foreign_user_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John Doe','jdoe@gmail.com','123456789'),(2,'Harry White','harry@yahoo.com','789456123'),(3,'Mary Johnson','mary@gmail.com','abcdefg123'),(4,'Robert','robert@gmail.com','123456'),(5,'Mary Smith','marysmith@gmail.com','msmith');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-07  4:30:35
