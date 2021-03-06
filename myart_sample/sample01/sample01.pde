
/* my_art_sample_01 */

  float angle = 0;                                     //角度の初期値


void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白
  
  smooth();                                            //アンチエイリアスをon。線を滑らかにする。

  noStroke();                                          //線をなしにする
   
}

void draw() {

  translate(width/2, height/2);                   // 描画する場所を中心にする
  rotate(angle);                                  // 座標を回転させる

  //水色の丸
  fill(#00ffff,60);                               // 桃色、不透明度60%
  ellipse(mouseY, 0, 50, mouseY);                 // xの位置と高さをmouseYで垂直方向の座標に反応させる

  //桃色の丸
  fill(#ff00ff,60);                               // 水色、不透明度60%
  ellipse(mouseY,0, 20, mouseY);                  // xの位置と高さをmouseYで垂直方向の座標に反応させる


  angle += 0.04;                                  // 回転角度を足していく（いろいろな値で試してみてください！）
}


/*　画像保存のコード　*/

void keyPressed() {

  // sのキーが入力された時に保存
  if (key == 's' || key == 'S') {


    // 時間、分、秒を取得　
    int hour = hour(); 
    int min = minute();   
    int sec = second(); 

    // デスクトップのパスと時間取得
    String path  = System.getProperty("user.home") + "/Desktop/screenshot" + hour +  min + sec + ".png";

    // 保存する
    save(path);

    // 表示されるログ
    println("screenshot" + path);
  }
}
