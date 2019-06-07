package query

const (
	// codelists
	GetCodeLists       = "g.V().hasLabel('_code_list')%s.dedup().by(label).labels()"
	GetCodeList        = "g.V().hasLabel('_code_list').hasLabel('_code_list_%s')"
	CodeListExists     = "g.V().hasLabel('_code_list_%s').count()"
	GetCodeListEdition = "g.V().hasLabel('_code_list').hasLabel('_code_list_%s').has('edition','%s')"
	CountEditions      = "g.V().hasLabel('_code_list').hasLabel('_code_list_%s').has('edition','%s').count()"
	GetCodes           = "g.V().hasLabel('_code').as('c').out('usedBy').as('r').inV().hasLabel('_code_list').hasLabel('_code_list_%s').has('edition','%s').select('c','r')"
	GetCode            = "g.V().hasLabel('_code').has('value','%s').as('c').out('usedBy').as('r').inV().hasLabel('_code_list').hasLabel('_code_list_%s').has('edition','%s').select('c','r')"
	GetCodeDatasets    = "g.V().hasLabel('_code_list').hasLabel('_code_list_%s').has('edition','%s').inE('usedBy').as('r').match(" +
		"__.as('r').outV().has('value','%s').as('c')," +
		"__.as('c').out('inDataset').as('d')," +
		"__.as('d').has('is_published',true)" +
		").select('d','r')"

	// hierarchy write
	CloneHierarchyNodes = "g.V().hasLabel('_generic_hierarchy_node_%s').as('old')" +
		".addV('_hierarchy_node_%s_%s')" +
		".property('code',select('old').values('code'))" +
		".property('code_list','%s').as('new')" +
		".addE('clone_of').to('old').select('new')"
	CountHierarchyNodes         = "g.V().hasLabel('_hierarchy_node_%s_%s').count()"
	CloneHierarchyRelationships = "g.V().hasLabel('_generic_hierarchy_node_%s').as('oc')" +
		".out('hasParent')" +
		".in('clone_of').hasLabel('_hierarchy_node_%s_%s')" +
		".addE('hasParent').from(select('oc').in('clone_of').hasLabel('_hierarchy_node_%s_%s'))"
	RemoveCloneMarkers  = "g.V().hasLabel('_hierarchy_node_%s_%s').outE('clone_of').drop()"
	SetNumberOfChildren = "g.V().hasLabel('_hierarchy_node_%s_%s').property(single,'numberOfChildren',__.in('hasParent').count())"
	SetHasData          = "g.V().hasLabel('_hierarchy_node_%s_%s').as('v')" +
		`.V().hasLabel('_%s_%s').as('c').where('v',eq('c')).by('code').by('value').` +
		`select('v').property('hasData',true)`
	MarkNodesToRemain = "g.V().hasLabel('_hierarchy_node_%s_%s').has('hasData').property('remain',true)" +
		".repeat(out('hasParent')).emit().property('remain',true)"
	RemoveNodesNotMarkedToRemain = "g.V().hasLabel('_hierarchy_node_%s_%s').not(has('remain',true)).drop()"
	RemoveRemainMarker           = "g.V().hasLabel('_hierarchy_node_%s_%s').has('remain').properties('remain').drop()"

	// hierarchy read
	HierarchyExists     = "g.V().hasLabel('_hierarchy_node_%s_%s').limit(1)"
	GetHierarchyRoot    = "g.V().hasLabel('_hierarchy_node_%s_%s').not(outE('hasParent')).limit(1)"
	GetHierarchyElement = "g.V().hasLabel('_hierarchy_node_%s_%s').has('code','%s')"
	GetChildren         = "g.V().hasLabel('_hierarchy_node_%s_%s').has('code','%s').in('hasParent').order().by('label')"
	GetAncestry         = "g.V().hasLabel('_hierarchy_node_%s_%s').has('code','%s').out('hasParent')"

	// instance - import process
	CreateInstance                   = "g.addV('_%s_Instance').property(single,'header','%s')"
	CountInstance                    = "g.V().hasLabel('_%s_Instance').count()"
	AddInstanceDimensions            = "g.V().hasLabel('_%s_Instance').property('dimensions',%s)"
	CreateInstanceToCodeRelationship = "g.V().hasLabel('_%s_Instance').as('i').addE('inDataset').from(" +
		"V().hasLabel('_code').has('value','%s').where(out('usedBy').has(label,'_code_list_%s'))" +
		")"
	AddVersionDetailsToInstance = "g.V().hasLabel('_%s_Instance').property(single,'dataset_id','%s').property(single,'edition','%s').property(single,'version','%s')"
	SetInstanceIsPublished      = "g.V().hasLabel('_%s_Instance').property(single,'is_published',true)"
	CountObservations           = "g.V().hasLabel('_%s_observation').count()"

	// dimension
	CreateDimensionToInstanceRelationship = "g.addV('_%s_%s').property('value','%s').as('d').addE('HAS_DIMENSION').from(V().hasLabel('_%s_Instance')).select('d').by(id)"
)
