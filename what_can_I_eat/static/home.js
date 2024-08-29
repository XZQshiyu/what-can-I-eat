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

