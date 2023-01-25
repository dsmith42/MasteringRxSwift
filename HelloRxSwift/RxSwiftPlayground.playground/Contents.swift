import RxSwift

// Creating Observables
let observable = Observable.just(1) 								// single element
let observable2 = Observable.of(1, 2, 3)						// Observable<Int>
let observable3 = Observable.of([1,2,3])						// Observable<[Int]>
let observable4 = Observable.from([1, 2, 3, 4, 5])	// Observable<Int>

// Subscribing to Observables
// we need to unwrap the element from the event to avoid `next`
observable4.subscribe { event in
	if let element = event.element {
		print(element)
	}
}

observable3.subscribe { event in
	if let element = event.element {
		print(element)
	}
}

// RxSwift will do the unwrapping for us:
observable4.subscribe(onNext: { element in
	print(element)
})


let subscription4 = observable4.subscribe(onNext: { element in
	print(element)
})

subscription4.dispose()
