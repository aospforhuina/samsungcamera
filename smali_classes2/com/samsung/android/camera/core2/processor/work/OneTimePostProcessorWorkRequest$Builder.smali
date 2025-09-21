.class public Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;
.super Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;
.source "OneTimePostProcessorWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder<",
        "Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;",
        "Landroidx/work/ExistingWorkPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOneTimeWorkRequestBuilderChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest$Builder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->lambda$build$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$build$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/a;->a:Lcom/samsung/android/camera/core2/processor/work/a;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public varargs addOneTimeWorkRequestBuilder(Landroidx/work/OneTimeWorkRequest$Builder;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;[Z)Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->addOneTimeWorkRequestBuilderList(Ljava/util/List;Ljava/util/List;[Z)Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs addOneTimeWorkRequestBuilderList(Ljava/util/List;Ljava/util/List;[Z)Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;",
            ">;[Z)",
            "Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    invoke-direct {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;-><init>()V

    .line 6
    :goto_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->enablePeriodicWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->buildConfigurationData()Landroidx/work/Data;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    array-length p2, p3

    if-lez p2, :cond_3

    aget-boolean p2, p3, v0

    if-eqz p2, :cond_3

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object p3, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    return-object p0
.end method

.method public build()Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->mOneTimeWorkRequestBuilderChain:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/b;->a:Lcom/samsung/android/camera/core2/processor/work/b;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroidx/work/ExistingWorkPolicy;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Ljava/util/List;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lcom/samsung/android/camera/core2/processor/work/c;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "WorkRequestBuilderChain is empty"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic build()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    move-result-object p0

    return-object p0
.end method
