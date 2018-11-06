<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 添加小区物业公告</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
    <div class="form-group">
      <div class="field">
        <div class="body-content">
          <div class="form-group">
            <div class="field">
              <div class="body-content">
                <div class="form-group">
                  <div class="label">
                    <label>公告编号：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50" name="title" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="label">
                    <label>主要负责人：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50"  height="60px" name="title" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="label">
                    <label>公告日期：</label>
                  </div>
                  <div class="field">
                  <input type="text" class="input w50"  height="60px" name="title" value="" /> 
                   <div class="tipss">格式：2015-10-10</div>
                   </div>
                </div>
              
                
                
                <div class="form-group">
                  <div class="label">
                    <label>公告内容：</label>
                  </div>
                  <div class="field">
                    <textarea name="scopyright" class="input" style="height:120px;"></textarea>
                    <div class="tips"></div>
                  </div>
                </div>
                
                
                <div class="form-group">
                  <div class="label">
                    <label>添加人：</label>
                  </div>
                  <div class="field">
                  <input type="text" class="input w50"  height="60px" name="title" value="" /> 
                   <div class="tipss"><font color="#FF0000">添加人不允许编辑！</font></div>
                   </div>
                </div>
                
                
                <div class="form-group">
                  <div class="label">
                    <label></label>
                  </div>
                  <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                  </div>
                </div>
              </div>
              

              
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
  </div>
</div>
</body></html>