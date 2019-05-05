submenu - help
openHelp: bookSymbol topic: topicSymbol
	"If a suitable seeming class named bookSymbol exists in the image we open it on the given topic, or on the first page should topic be nil"
	(Smalltalk classNamed: 'HelpBrowser')
		ifNil: [self inform: 'Sorry, there is no help system installed.' translated]
		ifNotNil: [:helpClass |
			(Smalltalk classNamed: bookSymbol)
				ifNil: [self inform: 'Sorry, the help book you requested does not exist.']
				ifNotNil: [:book |
					topicSymbol
						ifNil: [(helpClass openOn: book) model showFirstTopic]
						ifNotNil: [helpClass openOn: (book perform: topicSymbol)]]]