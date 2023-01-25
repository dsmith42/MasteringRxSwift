import RxSwift

let disposeBag = DisposeBag()

Observable.of("A", "B", "C")
	.subscribe(onNext: {
		print($0)
	})
	.disposed(by: disposeBag)
