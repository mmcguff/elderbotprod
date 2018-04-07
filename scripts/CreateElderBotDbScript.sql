/*Create Database ElderBotLocalDb;--change name of this when we deploy to azure.*/ 
--Use ElderBotLocalDb;/*Same as here but rememeber wen you deploy this to Azure that use statements are not possible.*/ 

drop table MessageLog;

drop table BotResponse;

/*MessageLog(This where all interactions between man and machine are to be stored)*/
CREATE TABLE MessageLog(
	Id int primary key identity not null,
	ConversationId nvarchar(150) NOT NULL,
	UserName nvarchar(150) NOT NULL,
	Channel nvarchar(150) NOT NULL,
	Created datetime NOT NULL,
	[Message] nvarchar(500) NULL
)


/*BotResponse(This contains all possible responses for my bot.*/  
/*LUIS will return values that correspond to topics in this table)*/
Create Table BotResponse
(
	Id int primary key identity not null,
	Topic nvarchar(100) not null,
	Response nvarchar(max) not null
);

Insert into BotResponse 
output inserted.*
values 
 ('troll','In a few seconds this chat will be terminated due to your attempt to troll.  If you were asking a valid question try phrasing in a way that does not involve swearing.  Good-bye!  [link](https://www.mormon.org/christmas/25-ways-25-days/day-8)')
,('mormon','Here is some information about what it is like to be a member of the church.  [link](https://www.mormon.org/)')

,('godhead','We believe God is our loving Heavenly Father and that we are his children.  Knowing who you are is central to God''s plan for His Children.  see [link](https://www.mormon.org/beliefs/god)')
,('families','The family is central the creation plan for his children.  Come see why family is so important to us.  see [link](https://www.mormon.org/beliefs/god)') 
,('dispensation','Starting with first man and women on earth, Adam and Eve, God has called prophets to lead and guide his children.  [link](https://www.mormon.org/beliefs/prophets)') 
,('christ','Jesus Christ is far more than just an influential man.  He is the very reason we can have hope for a better world.  [link](https://www.mormon.org/beliefs/jesus-christ)') 
,('apostasy','One of the reasons there has been so many Christian religions on the world is due to turning away or killing of God''s chosen prophets. [link](https://www.mormon.org/beliefs/apostasy)') 
,('joseph smith','We believe that through the sincere prayers of a 14 year old boy Jesus Christ true church was restored to the earth.  [link](https://www.lds.org/topics/joseph-smith/testimony?lang=eng&old=true)') 
,('book of mormon','The Book of Mormon: Another Testament of Jesus Christ provides evidence that Christ Church has been restored to earth.  We invite all people everywhere to study the message it contains and ask God if it is true. [link](https://www.mormon.org/beliefs/book-of-mormon)') 
,('holy ghost','We believe that all people can receive answers to their prayers through the power of the Holy Ghost.  [link](https://www.lds.org/scriptures/bofm/moro/10.3-5)') 

,('pre-earth life','We lived as spirits with God before we came to earth.  [link](https://www.mormon.org/beliefs/purpose-of-life)') 
,('creation','God created this earth for us learn and grow. [link](https://www.mormon.org/beliefs/the-creation-and-the-fall)') 
,('the fall','Living outside the presence of God makes us subject to pain and death. [link](https://www.mormon.org/beliefs/the-creation-and-the-fall)') 
,('life on earth','Life has a clear purpose. [link](https://www.mormon.org/beliefs/purpose-of-life)') 
,('atonement','All that is unfair about this life will be made right through the atonement of Jesus Christ. [link](https://www.mormon.org/video/because-of-him)') 
,('spirit world','We know through the Gospel of Jesus Christ what happens after we die. [link](https://www.mormon.org/beliefs/life-after-death)') 
,('resurrection','Because of Jesus Christ victory over death all will be resurrected to a perfect body after we die. [link](https://www.mormon.org/beliefs/life-after-death)') 
,('kingdoms','Through the restored gospel we know what the after life will be like.  [link](https://www.mormon.org/beliefs/life-after-death)') 

,('cleansed from sin','Jesus Christ makes it possible for us to be cleansed from sin.   [link](https://www.mormon.org/beliefs/jesus-christ-lord-and-savior)') 
,('faith','Faith in Jesus Christ is first principle of the Gospel.  [link](https://www.mormon.org/2017/principles-of-peace/faith)') 
,('repentance','Repentance allows us to make right the wrongs we commit in this life.   [link](https://www.mormon.org/2017/principles-of-peace/repentance)') 
,('baptism','Baptism is a sacred ordinance that allows one make special promises with God.   [link](https://www.mormon.org/beliefs/what-is-baptism)') 
,('the gift of the holy ghost','The gift of the Holy Ghost allows us to learn  truth.  [link](https://www.mormon.org/beliefs/holy-spirit)') 
,('endure to the end','After we have commited to follow him we must endure righteously despite how difficult the challenges are. [link](https://www.mormon.org/video-tessa-winger-on-god)') 

,('obedience','Here are list of tenants called the articles of faith that represent what members of the church believe.  [link](https://www.mormon.org/beliefs/articles-of-faith)') 
,('prayer','We believe that we are all able to talk directly to God through prayer.  [link](https://www.mormon.org/video/power-of-prayer)')
,('scriptures','Studying scriptures allows us to better recognize the voice of God speaking in our lives.  [link](https://www.mormon.org/2017/principles-of-peace/gods-word)')
,('sabbath','Sabbath day observance allows members of the church to refocus on what truly matters most in our lives.  [link](https://www.mormon.org/blog/4-ways-to-keep-the-sabbath-holy)')
,('ordinance of baptism','Baptism is a sacred ordinance that allows one make special promises with God.  [link](https://www.mormon.org/video/power-of-prayer)') 
,('prophets','Starting with first man and women on earth, Adam and Eve, God has called prophets to lead and guide his children.  [link](https://www.mormon.org/video-javier-chavez-on-prophets)') 
,('commandments','The ten commandments are very important to members of the church.  [link](https://www.mormon.org/beliefs/the-ten-commandments)') 
,('chastity','Virtue and chastity are extremely important to those seeking to receive the fullest blessing from Heavenly Father.  [link](https://www.mormon.org/blog/will-being-unchaste-affect-my-spirit)')
,('word of wisdom','The Lord has provided a law of health that allows members of the church to be free of addictions and health problems that would destroy our lives.  [link](https://www.mormon.org/beliefs/word-of-wisdom)') 
,('tithing','Tithing is not so much a matter of financial building the church as it a means of exercising faith.  [link](https://www.mormon.org/blog/why-mormons-pay-tithing)') 
,('fasting','Fasting allows members of the church to grow closer to Heavenly Father.  [link](https://www.mormon.org/blog/what-is-fasting-why-do-mormons-fast)') 

,('priesthood and auxiliaries','The church is organized into auxiliaries so that the specific needs of the members can be better met. [link](https://www.mormon.org/blog/are-there-prophets-today)')
,('missionary work','The blessing we enjoy as members of the church are so wonderful we feel it''s important to share it with everyone.  [link](https://www.mormon.org/missionaries)')
,('marriage','We believe that members of the church can marriage for time and all eternity  [link](https://www.mormon.org/beliefs/marriage)')
,('temples','Temples allow sacred ordinances that bring us closer to God to be performed.  [link](https://www.mormon.org/beliefs/temples)')
,('service','Serving your fellow man brings greater meaning into your lives.  [link](https://www.mormon.org/beliefs/church-community)')
,('learning','Learning is extremely important in the church.  [link](https://www.mormon.org/beliefs/jesus-christs-church)');







/*Validation
Select * from MessageLog;
Select * from BotResponse;
*/