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

};  
