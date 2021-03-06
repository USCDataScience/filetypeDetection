loadAndProcess<-function(tnpath, vpath, tspath){
	print('Loading Dataset.....')
	train=read.csv(file=tnpath,sep = ",")
	train=as.matrix(train)
	val=read.csv(file=vpath,sep=",")
	val=as.matrix(val)
	test=read.csv(file=tspath,sep=",")
	test=as.matrix(test)

	m<-dim(train)[1]
	n<-dim(train)[2]

	X<-train[,1:n-1]^0.5
	X<-cbind(numeric(m)+1, X) # add all 1 in column 1
	y<-train[,n]

	Xval<-val[,1:n-1]^0.5
	Xval<-cbind(numeric(dim(Xval)[1])+1, Xval) # add all 1 in column 1
	yval<-val[,n]

	Xtest<-test[,1:n-1]^0.5
	Xtest<-cbind(numeric(dim(Xtest)[1])+1, Xtest) # add all 1 in column 1
	ytest<-test[,n]

	list(X, y, Xval, yval, Xtest, ytest)
}
