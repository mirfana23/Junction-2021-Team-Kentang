'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2531ea56679988f7ab92f16a686f9423",
"assets/assets/icons/back.svg": "a7fe0222e2f048a61cba0480ec147e54",
"assets/assets/icons/chart.svg": "023c565c8d2c99326a9d9dd496d2aa69",
"assets/assets/icons/discover.svg": "f4402a1a4c1869bd3e89a5d3c1e965c2",
"assets/assets/icons/headphone.svg": "0ec1cbcdb6c01e5cc177eae352982c1f",
"assets/assets/icons/heart.svg": "83aff8a6e63968df30cec31103daf40f",
"assets/assets/icons/node-v16.13.0-x64.msi": "d82b79a47bffb2122f8b3893401fecc2",
"assets/assets/icons/profile.svg": "739be10b751f1014aedf0f9f4cd87dfa",
"assets/assets/icons/search.svg": "67746e77834af26405ce74a59412a495",
"assets/assets/icons/tape.svg": "ce58f36a90196a110e4b9179962f5a79",
"assets/assets/pics/appShots.png": "62057c0bca73078f3a8c21ec4092effd",
"assets/assets/pics/backgroun2.png": "83abc691172a3bd10489535af62ae716",
"assets/assets/pics/background1.png": "ba8316d83ca556a6024e1b9cfa811193",
"assets/assets/pics/graph.png": "46940bb47483f724df941d6768026c06",
"assets/assets/pics/Madhushesharamhra_vai9_ncunsplash.png": "00b9d84daa4cbce811363ed039c526a0",
"assets/assets/pics/pic1.png": "2ed675cd9f7d7f8c4e0133bc2fe00ce5",
"assets/assets/pics/pic2.jpg": "96e392e47a1f3ffa98a025bfacd1b918",
"assets/assets/pics/Rohittandon9wg5jcepbswunsplash.png": "b364f46022e0a800179da2aa98186f74",
"assets/assets/pics/statistics.png": "e6d30c52f0b72a28091f2816473350bf",
"assets/assets/pics/vector%2520(1).svg": "a95a0f70d6b71ab60da4258db9a9fc00",
"assets/assets/pics/vector%2520(2).svg": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/pics/vector%2520(3).svg": "595c0a5f5f01f4dd68a2d7bd92722817",
"assets/assets/pics/vector%2520(4).svg": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/pics/vector%2520(5).svg": "16454973255ca2f079bfc8ef4ae1d9fb",
"assets/assets/pics/vector%2520(6).svg": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/pics/vector%2520(7).svg": "5c6dfb2f65bee4cb550809320da79076",
"assets/assets/pics/Vector-1.svg": "778e25789688102dc3abe0db1dd84a0d",
"assets/assets/pics/vector.svg": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/pics/VectorSmallBottom.svg": "0a209246f8137836ab33d02349d2cb37",
"assets/assets/pics/VectorSmallTop.svg": "c21e785dadf3c62bcdae53bdea2be42c",
"assets/assets/pics/Water.png": "e76f67f3ca77ac304309bd3b10b6e165",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "3a1163ca91a598833ea51444a803af3c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "60c01b4a3b1ff6609b96d415f0f79978",
"/": "60c01b4a3b1ff6609b96d415f0f79978",
"main.dart.js": "54199c49777183ce39df1a47b0152fa5",
"manifest.json": "27ddb89463f3a16bdb86342032302a89",
"package-lock.json": "d631ce776fd7617296583ed7b3d8dbb9",
"package.json": "9896cb327e5b4ed4b31d3e181ad442dc",
"version.json": "aa941a7de5ecdd97e0ef2acbcf182688"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
