'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "be676fd302b3980539a22903843db1b9",
".git/config": "bd231e23207ebbbaba93a7f8db29138e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "af4afcbf09ea12a30b22cb3a63a453cb",
".git/HEAD": "d6628019dca291cf79c10adb10b6a597",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "7bf1fcc5f411e5ad68c59b68661660ed",
".git/index": "be51605e16952dd488c8a5adc69b4eb2",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "e1dd2ee074a379fd8afbbbd8dd45e184",
".git/logs/refs/heads/master": "9610153dd7d790b7155237c23bda7b24",
".git/logs/refs/heads/web": "8aad13d535eaac66e37cc333ea3d38f3",
".git/logs/refs/remotes/origin/master": "dad0eeb9f615b90f7841be2f9701de52",
".git/logs/refs/remotes/origin/web": "1bd97244d86673e00a343f79c26880c2",
".git/objects/00/18edec8ca89f99ddd93f4c133bfb7400db2565": "542787efa8291e3f96e6341b001cd19e",
".git/objects/06/03addd613c36fd09f0c286fc69c98798187689": "1ce4e79f98605b7328c0281d55ecb204",
".git/objects/09/ff6925e215d526e72760955560b0f40e302aef": "f077b2e6bda3315e05a010b85e53eac9",
".git/objects/0f/816fb5068fb5d0dc1623718a94d7a34c5edfe4": "48392ce692d6328aef69a753fa305233",
".git/objects/11/a2f644b56f32e55efbbdfea6651894a2ac5aed": "011b1df745a6348e30d081c404d34a9e",
".git/objects/13/52f4074e4f4cade24834f0111ec6f1adb1341c": "95e39b0df239ad343f765ed274f789cc",
".git/objects/13/cd698afa86edb334bec59991cd113491a5a4f1": "01d69635e49925db17e7c32e26fc974f",
".git/objects/15/9b15011009e1e691b0761e5627dc3f3aa452ad": "822c0ced8e90203ed87ff7e0082d7945",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/2c/97e5d1baaeee36c1ed9b36cfa2b8e397d8fc48": "622b12e926d9dd54cbd83be3d7bedb98",
".git/objects/34/2f3d7784a4bea9ba16199c71fb82a2e5b73055": "01ff8ac9f6fc2b8d26ac1e5349713ae9",
".git/objects/37/51a2ffa75c43c52a51eda5d2b6db409c3e6283": "85a29b9303127ebed694e33e575eeb24",
".git/objects/39/cdd3453f697b748ce626b30deecafa3cd18808": "ea4ea39497e360a2cf9fb3dac9e0d85a",
".git/objects/40/cf97a447c7048b6d2815d8b1919760414b88fc": "077b013c784c91b1252c1aa5ad3abf81",
".git/objects/44/7c36fb401246120cb5b6ba44c97cb572930f17": "51ec0603423be11abd16e53dc6bc6252",
".git/objects/45/24016655540400d50e4f32a98d626e4ce916b7": "6981c55071f4bf1ca5c2e677c5462f73",
".git/objects/4c/a35aedc830035c77a01b834ea60953a61676c2": "64bc409725b712b053b061403a898a36",
".git/objects/4f/70cc555a5dc5dbd8dc56258648604ac0dc32df": "f8f5f5955a545d1371c2ab3be2e84307",
".git/objects/51/9eab77391f582223445cd9ffbf450718c3b03f": "a1fa65c963adbeddfc55c1bb1af851ef",
".git/objects/52/ba6c39c363cbdbd6fcba8eecbab92d3fb37a4a": "b01ccb3f26e731676b50a89a5f626043",
".git/objects/62/810707b14bda531f793d86f243dacddad5ebdf": "dd0cfa4b5a475603d21108c821104b93",
".git/objects/67/471899be144b68b3b14b4e58e9a91336ad1ece": "9690bf5abcf6fab8cd46f63e7039ebae",
".git/objects/68/c3e69c89a116adac5035b7bad08ef8f693c134": "b032ce762882fb977525314e048dd7df",
".git/objects/6a/e5122591eb04dbd4c0bdde1f043a37787eeb5b": "959a4bd485683a96ca5ea45991df2462",
".git/objects/6d/e774c679641d3bd3484f1fc806746efd1adc34": "fff9d98678b40cf207e5c4150aee84e4",
".git/objects/6e/5f38e0013d15dab44b1163ce7c6a8174a2c514": "38b9ecbe8e29ea1fab58387aefd83388",
".git/objects/70/dedf41983dc6101f496d05c1695edf834b2eec": "326ee55c7281caca6562cca375f17f5f",
".git/objects/71/c45a7ede6ae761e6bc95403a63bafcc6984bfa": "5f6f10d300333f29916c40b8112884d6",
".git/objects/76/0fef3fe0c5c0e5b9519c7bef5d1709fc0e4689": "a2f8607afa6d3bba67d243b6b65ceca0",
".git/objects/7a/ca610316e2bba58ceece99707ecc4b247417ed": "d0c8027c1ccfb5ca1740e448fad81b9d",
".git/objects/81/0337fcab9374ea7916511a5b9b59c1fe38c5fd": "cc99e87ef5a5ad26f76eb93e555d98fa",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/91/f38344712d29756bb18b515c3a35afd86a8253": "0f9115f3a39898b9453287bccc319d1d",
".git/objects/95/19e1d75e8e60fc461d42dceff7162076484747": "87166efde232eca9c4f1ad4118b6d046",
".git/objects/99/f23a78125741e768bab9da05c6c47e119499ad": "16bdc7545fca36233a7bd5687a05abeb",
".git/objects/a0/dc93fc338aadd48542143f670115657b9aae3f": "0fc860b86f55637c829920b92338913b",
".git/objects/a2/4933cd5c99d6dbb0d7e665f86354a9d8693920": "076765c2455ed50daa7e7f2ae77a384c",
".git/objects/ad/0c6ada626dc00ee35fc51d13072b79496e20a0": "1d56ea34b7c5d49215a973c695942049",
".git/objects/b0/45e742b92ec95abe4e850d94f81b0abdd77382": "e01dc34766f2171c87697fba8f446d86",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/b83122d7eec0c85882b51eeaea0eef8581a393": "a0559b0c884e603b48c8176447e69909",
".git/objects/bc/79ca58ad060156101a5f383ba2903a528e0e70": "1e1c1fe8876b00e4a8afcc5592161af6",
".git/objects/c0/1e0cc97c47f58ed3b11fd4da26c3570b3fa2e2": "c19d5adf1cff69eeb7118c31fbca0c31",
".git/objects/c1/6927e1fa42107de92bd024dd3ef3ad2adcc0fc": "c9451af104a69fe83095af40795c6112",
".git/objects/c5/060eb0fe0b8477a27f59120cd034d266f0622f": "88e97edfdcad64831f83414780b659a1",
".git/objects/d2/5a555bd73a11c0d9f59f7f660f932ff4dfca2f": "81f3e43599282193465ee232ca93f262",
".git/objects/dd/56eabbf298449db91bfa8644c6fbb20b8e6dda": "3fa6bb294070401dbba0b01792b84ce0",
".git/objects/dd/8eef25cd1a744291d9e920679c8edd801e60ef": "3f31303d420fe3de8b3b20445e9dc495",
".git/objects/e4/4708fa579caee84859c2b20b3bd58b809629f9": "d2a3befec85c9dfa2289b5d359b8f710",
".git/objects/f0/87059818ac1146e26c523d98a94481d6845127": "2deb0eac5170681872924c28d67ff418",
".git/objects/fc/565ec170b7fd55cbf422b8188a6f64eddda60e": "c1d5b622c8e63d1865785872c9d4a21d",
".git/objects/pack/pack-4a56f7ba19ec48c6e10aac7b3b8b8c2fac8f16f2.idx": "740f67aac7d347ba8c7fa73330082905",
".git/objects/pack/pack-4a56f7ba19ec48c6e10aac7b3b8b8c2fac8f16f2.pack": "f9c294622381a3edbfccd8d578fb9db0",
".git/ORIG_HEAD": "3926b930e0d43428afbd24b7c36b8549",
".git/refs/heads/master": "8f700eb1e55c195809cf56c940580d89",
".git/refs/heads/web": "3926b930e0d43428afbd24b7c36b8549",
".git/refs/remotes/origin/master": "191d891282d4f4b6fd6f030b3d90381f",
".git/refs/remotes/origin/web": "3926b930e0d43428afbd24b7c36b8549",
"assets/AssetManifest.json": "a034b62dd87d532dd11444fb6e4f0aeb",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/Images/health.png": "e0f3877b9f74d136cc315e552d7c4c40",
"assets/Images/icon.png": "560c67c7f5ee68d6ae77e7db021906f9",
"assets/Images/slider_1.png": "2d1536ac01f05eaf7a9ad24fa9ab10e0",
"assets/Images/slider_2.png": "0474bf971377d524aa9935bfdd252fc6",
"assets/Images/slider_3.png": "6931c9704dde197b01c9037bd2f82747",
"assets/Images/slider_4.png": "3bc93a5fdbcdc61f270e36dd7677d319",
"assets/Images/slider_5.png": "35bbb61e5aa227303902c707d62e41b2",
"assets/Images/washing.png": "25d6ea05ac409b91b55cf3b9b5b75450",
"assets/Images/World.png": "abfac04ee3aa58201f56658549b41df4",
"assets/NOTICES": "da2074e63610ed7b59de6ecd47a1fcb1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "f561715f8f70aa71aeff6555224b216d",
"/": "f561715f8f70aa71aeff6555224b216d",
"main.dart.js": "4372c883ecc1dea3926a50764d7807ff",
"manifest.json": "d133fa81b0986292273bdfcf817f89a8",
"README.md": "0c3fc7943fe3ff460926b2f7ae48749f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
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
  if (event.message == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.add(resourceKey);
    }
  }
  return Cache.addAll(resources);
}
