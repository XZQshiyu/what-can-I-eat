function fetchContent(url) {
  fetch(url)
  .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP 错误！状态: ${response.status}`);
      }
      return response.text();
    })
  .then(data => {
      document.getElementById('campusFood').innerHTML = data;
    })
  .catch(error => {
      console.error('获取内容时出错:', error);
    });
}
function displaySelectedImages(input) {
  var imagePreview = document.getElementById('imagePreview');
  imagePreview.innerHTML = '';

  for (var i = 0; i < input.files.length && i < 3; i++) {
    var file = input.files[i];
    var reader = new FileReader();

    reader.onload = function(e) {
      var img = document.createElement('img');
      img.src = e.target.result;
      img.style.width = '100px';
      img.style.height = '100px';
      img.style.marginRight = '10px';
      imagePreview.appendChild(img);
    };

    reader.readAsDataURL(file);
  }
}


// 在页面加载完成时执行
window.onload = function() {
    // 获取所有的 li 元素
    var listItems = document.querySelectorAll('.navi ul li');

    // 为每个 li 元素添加点击事件监听器
    listItems.forEach(function(item) {
      item.addEventListener('click', function() {
        // 先移除所有 li 元素的点击样式
        listItems.forEach(function(otherItem) {
          otherItem.classList.remove('clicked');
        });
        // 为当前点击的 li 元素添加点击样式
        this.classList.add('clicked');

        // 根据点击的 li 元素显示相应的内容
        var linkText = this.querySelector('a').textContent;
        switch (linkText) {
          case '推荐内容':
            document.getElementById('recommend').style.display = 'block';
            document.getElementById('campusFood').style.display = 'none';
            document.getElementById('offCampusFood').style.display = 'none';
            document.getElementById('comment').style.display = 'none';
            document.getElementById('myHome').style.display = 'none';
            document.getElementById('contact').style.display = 'none';
            break;
          case '校内美食':
            document.getElementById('recommend').style.display = 'none';
            document.getElementById('campusFood').style.display = 'block';
            document.getElementById('offCampusFood').style.display = 'none';
            document.getElementById('comment').style.display = 'none';
            document.getElementById('myHome').style.display = 'none';
            document.getElementById('contact').style.display = 'none';
            break;
          case '校外美食':
            document.getElementById('recommend').style.display = 'none';
            document.getElementById('campusFood').style.display = 'none';
            document.getElementById('offCampusFood').style.display = 'block';
            document.getElementById('comment').style.display = 'none';
            document.getElementById('myHome').style.display = 'none';
            document.getElementById('contact').style.display = 'none';
            break;
            case '我要点评':
              document.getElementById('recommend').style.display = 'none';
              document.getElementById('campusFood').style.display = 'none';
              document.getElementById('offCampusFood').style.display = 'none';
              document.getElementById('comment').style.display = 'block';
              document.getElementById('myHome').style.display = 'none';
              document.getElementById('contact').style.display = 'none';
  
              var commentForm = `
                <div style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-radius: 5px; z-index: 9999999;">
                  <span style="position: absolute; top: 0; right: 10px; font-size: 20px; cursor: pointer;" onclick="document.getElementById('comment').style.display = 'none';">×</span>
                  <label for="dishName">菜品名称：</label><br>
                  <input type="text" id="dishName"><br>
                  <label for="imageUpload">上传图片：</label><br>
                  <input type="file" multiple accept="image/*" id="imageUpload" onchange="displaySelectedImages(this)"><br>
                  <div id="imagePreview"></div>
                  <label for="commentText">我的评价：</label><br>
                  <textarea id="commentText" rows="4" cols="50"></textarea><br>
                  <label for="campusSelect">校区：</label><br>
                  <select id="campusSelect">
                    <option value="东校区" selected>东校区</option>
                    <option value="西校区">西校区</option>
                    <option value="中校区">中校区</option>
                    <option value="南校区">南校区</option>
                    <option value="高新区">高新区</option>
                  </select><br>
                  <label for="canteenSelect">食堂：</label><br>
                  <select id="canteenSelect">
                    <option value="东区学生食堂（一楼）" selected>东区学生食堂（一楼）</option>
                    <option value="东苑餐厅（二楼）">东苑餐厅（二楼）</option>
                    <option value="东苑风味餐厅">东苑风味餐厅</option>
                    <option value="沁园春">沁园春</option>
                    <option value="蜗壳茶餐厅">蜗壳茶餐厅</option>
                    <option value="星座餐厅（民族）">星座餐厅（民族）</option>
                    <option value="美食广场">美食广场</option0>
                    <option value="东区教工食堂">东区教工食堂</option>
                  </select><br><br><br>
                  <input type="submit" value="上传" style=" width: 150px; background-color:#077c83; color: white;">
                </div>
              `;
  
              document.getElementById('comment').innerHTML = commentForm;
  
              // 检查 'campusSelect' 元素是否存在，如果存在则添加事件监听器
              var campusSelect = document.getElementById('campusSelect');
              if (campusSelect) {
                campusSelect.addEventListener('change', function() {
                  var selectedCampus = this.value;
                  var canteenOptions = '';
  
                  switch (selectedCampus) {
                    case '东校区':
                      canteenOptions = '<option value="东区学生食堂（一楼）">东区学生食堂（一楼）</option><option value="东苑餐厅（二楼）">东苑餐厅（二楼）</option><option value="东苑风味餐厅">东苑风味餐厅</option><option value="沁园春">沁园春</option><option value="蜗壳茶餐厅">蜗壳茶餐厅</option><option value="星座餐厅（民族）">星座餐厅（民族）</option><option value="美食广场">美食广场</option><option value="东区教工食堂">东区教工食堂</option>';
                      break;
                    case '西校区':
                      canteenOptions = '<option value="西区学生食堂">西区学生食堂</option><option value="西三餐厅">西三餐厅</option><option value="西苑餐厅">西苑餐厅</option><option value="芳华餐厅">芳华餐厅</option><option value="金桔园餐厅（民族）">金桔园餐厅（民族）</option><option value="正阳楼餐厅">正阳楼餐厅</option><option value="西区教工餐厅">西区教工餐厅</option>';
                      break;
                    case '中校区':
                      canteenOptions = '<option value="桃李苑">桃李苑</option><option value="夜餐部">夜餐部</option>';
                      break;
                    case '南校区':
                      canteenOptions = '<option value="南区学生食堂">南区学生食堂</option>';
                      break;
                    case '高新区':
                      canteenOptions = '<option value="高新区学生食堂">高新区学生食堂</option><option value="高新区学生食堂 B 区">高新区学生食堂 B 区</option>';
                      break;
                  }
  
                  document.getElementById('canteenSelect').innerHTML = canteenOptions;
                });
              }
  
              // 显示上传图片的预览
              var fileInputs = [];
              for (var i = 0; i < 3; i++) {
                var fileInput = document.createElement('input');
                fileInput.type = 'file';
                fileInput.style.marginRight = '10px';
                fileInput.addEventListener('change', function(event) {
                  var file = event.target.files[0];
                  if (file) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                      var imagePreview = document.createElement('img');
                      imagePreview.src = e.target.result;
                      imagePreview.style.width = '50px';
                      imagePreview.style.height = '50px';
                      event.target.parentNode.insertBefore(imagePreview, event.target.nextSibling);
                    };
                    reader.readAsDataURL(file);
                  }
                });
                fileInputs.push(fileInput);
              }
              break;
          case '我的主页':
            document.getElementById('recommend').style.display = 'none';
            document.getElementById('campusFood').style.display = 'none';
            document.getElementById('offCampusFood').style.display = 'none';
            document.getElementById('comment').style.display = 'none';
            document.getElementById('myHome').style.display = 'block';
            document.getElementById('contact').style.display = 'none';
            break;
          case '联系我们':
            document.getElementById('recommend').style.display = 'none';
            document.getElementById('campusFood').style.display = 'none';
            document.getElementById('offCampusFood').style.display = 'none';
            document.getElementById('comment').style.display = 'none';
            document.getElementById('myHome').style.display = 'none';
            document.getElementById('contact').style.display = 'block';
            break;
        }
      });
    });

    

    // 页面加载时默认显示"推荐内容"
    document.getElementById('recommend').style.display = 'block';
    listItems[0].classList.add('clicked');

    // 获取导航栏、头部图片、搜索框和回到顶部按钮的元素
    var navi = document.querySelector('.navi');
    var header = document.querySelector('.header');
    var searchContainer = document.querySelector('.search-container');
    var backToTopButton = document.getElementById('backToTop');

    // 滚动事件监听
    window.addEventListener('scroll', function() {
      // 如果滚动超过海报高度
      if (window.scrollY > 200) {
        navi.classList.add('fixed-nav');
        header.classList.add('hidden-img');
        searchContainer.style.top = '0';
        backToTopButton.style.display = 'block';
      } else {
        navi.classList.remove('fixed-nav');
        header.classList.remove('hidden-img');
        searchContainer.style.top = '40px';
        backToTopButton.style.display = 'none';
      }
    });

    var eastStudentDiningLinks = document.querySelectorAll('#campusFood a');
    eastStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('东区学生食堂（一楼）')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('east-stu-dining-hall-1.html');
            });
        }
    });
    
   

    // 回到顶部按钮的点击事件监听
    // 为按钮添加点击事件监听器
    document.getElementById('backToTop').onclick = function() {
        window.scrollTo({
          top: 0,
          behavior:'smooth'
        });
    };
    
    document.getElementById('myHome').addEventListener('click', function (event) {
      console.log('点击了“我的主页”');  // 添加这一行
      event.preventDefault();
      var xhr = new XMLHttpRequest();
      xhr.open('GET','myself.html', true);
      xhr.onreadystatechange = function () {
        console.log('XHR 状态变化：', xhr.readyState);  // 添加这一行
        if (xhr.readyState === 4 && xhr.status === 200) {
          console.log('成功获取数据');  // 添加这一行
          document.getElementById('content').innerHTML = xhr.responseText;
        }
      };
      xhr.send();
    });

    // 东区学生食堂链接点击事件处理
    var eastStudentDiningLinks = document.querySelectorAll('#campusFood a');
    eastStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('东区学生食堂')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('east-stu-dining-hall-1.html');
            });
        }
    });

    // 西区学生食堂链接点击事件处理
    var westStudentDiningLinks = document.querySelectorAll('#campusFood a');
    westStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('西区学生食堂')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('west-stu-dining-hall-1.html');
            });
        }
    });

    // 中区学生食堂链接点击事件处理
    var centralStudentDiningLinks = document.querySelectorAll('#campusFood a');
    centralStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('中区学生食堂')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('central-stu-dining-hall-1.html');
            });
        }
    });

    // 南区学生食堂链接点击事件处理
    var southStudentDiningLinks = document.querySelectorAll('#campusFood a');
    southStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('南区学生食堂')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('south-stu-dining-hall-1.html');
            });
        }
    });

    // 高新区学生食堂链接点击事件处理
    var highTechStudentDiningLinks = document.querySelectorAll('#campusFood a');
    highTechStudentDiningLinks.forEach(function(link) {
        if (link.textContent.includes('高新区学生食堂')) {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                fetchContent('high-tech-stu-dining-hall-1.html');
            });
        }
    });
};