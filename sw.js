self.addEventListener("install", e =>{
	e.waitUntil( 
		caches.open("static").then(cache => {
			return cache.addAll(["./", "./wala.css", "./image/gym logo.png"]);

		})
   	);
}); 

self.addEventListener("fetch", e => {
	e.respondWith(
		caches.match(e.request).then(reponse => {
			return response || fetch(e.request);
		})
		);

});