function fetchContent(url, callback) {
  fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP 错误！状态: ${response.status}`);
      }
      return response.text();
    })
    .then(data => {
      document.getElementById('myselfContent').innerHTML = data;
      if (callback) callback();
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

window.onload = function() {
  var listItems = document.querySelectorAll('.navi ul li');

  listItems.forEach(function(item) {
    item.addEventListener('click', function() {
      listItems.forEach(function(otherItem) {
        otherItem.classList.remove('clicked');
      });
      this.classList.add('clicked');

      // 清除 'myselfContent' 容器的内容
      document.getElementById('myselfContent').innerHTML = '';

      var linkText = this.querySelector('a').textContent;
      switch (linkText) {
        case '推荐内容':
          displaySection('recommend');
          break;
        case '校内美食':
          displaySection('campusFood');
          break;
        case '校外美食':
          displaySection('offCampusFood');
          break;
        case '我要点评':
          displaySection('comment');
          displayCommentForm();
          break;
        case '我的主页':
          fetchContent('myself.html', function() {
            displaySection('myselfContent');
          });
          break;
        case '联系我们':
          displaySection('contact');
          break;
      }
    });
  });

  document.getElementById('recommend').style.display = 'block';
  listItems[0].classList.add('clicked');

  var navi = document.querySelector('.navi');
  var header = document.querySelector('.header');
  var searchContainer = document.querySelector('.search-container');
  var backToTopButton = document.getElementById('backToTop');

  window.addEventListener('scroll', function() {
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

  document.getElementById('backToTop').onclick = function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  };

  setupDiningHallLinks('campusFood', '东区学生食堂', 'east-stu-dining-hall-1.html');
  setupDiningHallLinks('campusFood', '西区学生食堂', 'west-stu-dining-hall-1.html');
  setupDiningHallLinks('campusFood', '中区学生食堂', 'central-stu-dining-hall-1.html');
  setupDiningHallLinks('campusFood', '南区学生食堂', 'south-stu-dining-hall-1.html');
  setupDiningHallLinks('campusFood', '高新区学生食堂', 'high-tech-stu-dining-hall-1.html');
};

function displaySection(sectionId) {
  var sections = ['recommend', 'campusFood', 'offCampusFood', 'comment', 'myselfContent', 'contact'];
  sections.forEach(function(id) {
    document.getElementById(id).style.display = (id === sectionId) ? 'block' : 'none';
  });
}

function setupDiningHallLinks(parentId, linkText, url) {
  var links = document.querySelectorAll(`#${parentId} a`);
  links.forEach(function(link) {
    if (link.textContent.includes(linkText)) {
      link.addEventListener('click', function(event) {
        event.preventDefault();
        fetchContent(url);
      });
    }
  });
}

function displayCommentForm() {
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
        <option value="美食广场">美食广场</option>
        <option value="东区教工食堂">东区教工食堂</option>
      </select><br><br><br>
      <input type="submit" value="上传" style=" width: 150px; background-color:#077c83; color: white;">
    </div>
  `;

  document.getElementById('comment').innerHTML = commentForm;

  document.getElementById('campusSelect').addEventListener('change', function() {
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