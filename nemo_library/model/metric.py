from dataclasses import dataclass, field, asdict
from typing import Optional, Dict, Any, List

@dataclass
class Metric:
    aggregateBy: str
    aggregateFunction: str
    dateColumn: Optional[str]
    description: str
    descriptionTranslations: Dict[str, str]
    displayName: str
    displayNameTranslations: Dict[str, str]
    groupByAggregations: Dict[str, str]
    groupByColumn: str
    isCrawlable: bool
    optimizationOrientation: str
    optimizationTarget: bool
    scopeId: Optional[str]
    scopeName: Optional[str]
    unit: str
    defaultScopeRestrictions: List[Any]
    conflictState: str
    focusOrder: str
    internalName: str
    parentAttributeGroupInternalName: Optional[str]
    changedBy: str
    changedDate: str
    createdBy: str
    creationDate: str
    id: str
    metadataTemplateId: Optional[str]
    projectId: str
    tenant: str

    def to_dict(self):
        return asdict(self)