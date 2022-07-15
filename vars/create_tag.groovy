 4.	def create_tag(String tag) {
5.	    
6.	    sh """    
7.	    git log -1
8.	    git tag -a ${tag} -m "this tag has been created from jenkins"
9.	    git push origin ${tag}    
10.	       """
11.	}
12.	
13.	return this
