.class public Lcom/samsung/android/camera/core2/node/SefNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "SefNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;,
        Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final BOKEH_RELIGHT_EFFECT_ONLY:Z

.field private static final BOKEH_RELIGHT_VIEWER_ONLY:Z

.field private static final SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

.field private final mPresetSefNodeParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SefNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "SEC_FLOATING_FEATURE_VISION_CONFIG_RELIGHTING_SOLUTION"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arsoft_vieweronly.v1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_VIEWER_ONLY:Z

    .line 3
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arcsoft_effectonly.v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_EFFECT_ONLY:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0xaa

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    const-string v0, "callback"

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    return-void
.end method

.method private createSefParam(Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/Map$Entry;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            "Ljava/util/Map$Entry<",
            "Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;",
            "[B>;)",
            "Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->Q:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_VIEWER_ONLY:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_EFFECT_ONLY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    sget-object v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->f:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    if-ne p0, v2, :cond_2

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->U:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/16 v2, 0xb40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    if-eqz v0, :cond_5

    const/16 p0, 0xbc0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 6
    sget-object p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->v:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    goto :goto_2

    .line 7
    :cond_2
    sget-object v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->g:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    if-ne p0, v2, :cond_3

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->U:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/16 v2, 0xca0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    if-eqz v0, :cond_5

    const/16 p0, 0xc90

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 10
    sget-object p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->w:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    goto :goto_2

    .line 11
    :cond_3
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->x:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    if-ne p0, v0, :cond_5

    .line 12
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->U:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/16 v2, 0xab0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 13
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->T:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_VIEWER_ONLY:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/camera/core2/node/SefNode;->BOKEH_RELIGHT_EFFECT_ONLY:Z

    if-eqz v1, :cond_5

    :cond_4
    const/16 p0, 0xbd0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 15
    sget-object p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->G:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 16
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->h([B)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->a()Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    return-object p0
.end method

.method private makeSefParamList(Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;",
            "[B>;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "makeSefParamList"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/SefNode;->createSefParam(Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/Map$Entry;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private presetSefNodeParam(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presetSefNodeParam dataTypeToSave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result p2

    new-array p2, p2, [B

    .line 4
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/util/BufferBase;->get([B)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    sget-object p1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->E:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result p2

    new-array p2, p2, [B

    .line 8
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/util/BufferBase;->get([B)V

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    sget-object p1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->F:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private processPictureInternal(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->h([B)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->b(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->a()Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/node/SefNode;->saveSefDataToFile(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSefDataToFile fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processSef(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "processPicture E: picture [%s]"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->G:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "processPicture X"

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/SefNode;->presetSefNodeParam(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/Integer;)V

    .line 4
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->H:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "processPicture X: sefNodeParamMap is empty."

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/camera/core2/node/SefNode;->makeSefParamList(Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 12
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/SEFInterface;->j(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/util/List;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 13
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private saveSefDataToFile(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "saveSefDataToFile"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "sefParam is null"

    .line 2
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->dstFileName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string p0, "sefParam.dstFileName is null"

    .line 4
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string p0, "sefParam.sefName is null"

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object v2, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->data:[B

    if-nez v2, :cond_3

    const-string p0, "sefParam.data is null"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSefDataToFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->dstFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->data:[B

    iget p1, p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;->dataType:I

    invoke-static {v2, v3, v4, p1}, Lcom/samsung/android/camera/core2/util/SEFInterface;->h(Ljava/io/File;Ljava/lang/String;[BI)I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "saveSefDataToFile - SEFInterface.addData fail"

    .line 11
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;->onError()V

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public declared-synchronized processPicture(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageFile;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPicture E for ImageFile"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->H:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/camera/core2/node/SefNode;->processPictureInternal(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 6
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    const-string p2, "processPicture X"

    .line 7
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_3
    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode;->SEF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPicture fail %s"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/camera/core2/util/CLog;->f(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;->onError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    .line 11
    :try_start_4
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    monitor-exit p0

    return-object p1

    .line 14
    :goto_0
    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 15
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/SefNode;->mPresetSefNodeParamMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 16
    throw p1

    :cond_1
    :goto_1
    const-string p2, "processPicture X : failed - there is no sef control process"

    .line 17
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SefNode;->processSef(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SefNode;->processSef(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method
