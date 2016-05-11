<?php
namespace Home\Controller;
use Think\Controller;
use Com\Wechat;
use Com\WechatAuth;
class LearnController extends Controller {
    public function index($id){
    	$appid="wx26bf068db0c7a35a";
      	$appSecret="8796eb12429c82e112a29324778660cc";
      	$WechatAuth=new WechatAuth($appid,$appSecret);
        if($_GET['code']){
          header('Content-type:text/html;charset=utf-8');
          $user=$WechatAuth->getAccessToken('code',$_GET['code']);
          $openid=$user['openid'];
          $users=$WechatAuth->getUserInfo($openid);
          
          $ul=M('users');
	      $data['openid']=$users['openid'];
	      $data['nickname']=$users['nickname'];
	      $data['sex']=$users['sex'];
	      $data['province']=$users['province'];
	      $data['city']=$users['city'];
	      $data['headimgurl']=$users['headimgurl'];
	      $data['creattime']=date("Y/m/d h:i:sa");
      	  $ul->add($data);
          /*if(users::findOne([ 'openid'=> $user['openid'] ]) ){
          		echo "重复";
          }else{
          	  $ul=M('users');
		      $data['openid']=$users['openid'];
		      $data['nickname']=$users['nickname'];
		      $data['sex']=$users['sex'];
		      $data['province']=$users['province'];
		      $data['city']=$users['city'];
		      $data['headimgurl']=$users['headimgurl'];
          	  $ul->add($data);
          }*/
      	}
      	$m=M("learn");
        $id=intval($id);
        $item=$m->where("item=$id")->select();
        $this->assign('item',$item[0]);
        $n=M("learn_item$id");
        $msg=$n->where("item=$id")->select();
        $this->assign('block',$msg);
        $this->display();

    }
    public function course($item,$id){
        $m=M("learn_item$item");
        $course=$m->where("item = $item and learn_id=$id")->select();
        $this->assign('course',$course[0]);
        $file='Public/page/'.$course[0][pagesrc];
        $this->assign('file',$file);

        $nn=M("learn_course1");
        $map['item'] = $item;
        $map['learn_id'] = $id;
        $q=$nn->where($map)->select();
        /*$nn->fetchSql(true)->where("item = $item and learn_id = $id")->select();*/
        $this->assign('q',$q);

        $art=M("artical");
        $artical=$art->where($map)->select();
        $this->assign('artical',$artical);
        $this->display();
    }

     public function itemmsg(){
        $m=M("learn_item1");
        $data = array();
/*        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"气道哽塞",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"糖尿病急症",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"颅脑外伤",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"中毒",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"休克",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"拉伤、扭伤",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
        $data[] = array('learn_id'=>'','url'=>'logoff.png','img_name'=>"中风",'media'=>'http://vss2.waqu.com/j27cxl9yw7o4qcey/normal.mp4','poster'=>'http://img.waqu.com/j27cxl9yw7o4qcey/thumbnail/0033.jpg');
*/        
        $m->addAll($data);
        echo "导入完毕";
    }

    //网页授权获取用户基本信息
    public function webUsers(){
     
      $appid="wx26bf068db0c7a35a";
      $appSecret="8796eb12429c82e112a29324778660cc";
      $WechatAuth=new WechatAuth($appid,$appSecret);
      $url="http://mmtestdesign.applinzi.com/index.php/Home/Learn/index/id/1";
      $result=$WechatAuth->getRequestCodeURL($url);
      $result;
      header("Location:{$result}");
		/*http://mmtestdesign.applinzi.com/home/learn/webusers*/

	}
}