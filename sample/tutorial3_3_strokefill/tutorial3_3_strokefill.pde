/*　tutorial3_3_strokefill */


float angle = 0;                                       //角度の初期値

void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白
  
  smooth();                                            //アンチエイリアスをON                      

  strokeWeight(1);                                     //線の太さの指定
}

void draw() {

  translate(width/2, height/2);                        // 描画する場所を中心にする

  rotate(angle);                                       // 座標を回転させる
  
  stroke(#000000);                                     //線の色の指定。黒。

  fill(#aaaaaa,40);                                    //面の色の指定。黒、透明度20%

  rect(0, 0, 50, 200);                                 // (x軸,y軸,幅,高さ）ここでは原点の中心にして左から幅50px,高さ200pxの四角を描く

 // ellipse(0, 0, 50, 200);                            // (x軸,y軸,幅,高さ）ここでは原点を中心に幅50px,高さ200pxの円を描く

  angle += 0.1;                                        // 回転角度を足していく（いろいろな値で試してみてください！）
}
