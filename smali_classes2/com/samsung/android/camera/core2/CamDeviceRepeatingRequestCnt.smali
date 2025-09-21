.class public Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;
.super Ljava/lang/Object;
.source "CamDeviceRepeatingRequestCnt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i:Ljava/util/List;

    .line 3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->b(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "firstRecord="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->g(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "secondRecord="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->c(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mainPreviewCb="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->h(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "subPreviewCb="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->d(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mainPreview="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "previewDepth="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->a(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "arCore="

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->f(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "extraPreview="

    invoke-direct {v1, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;Lo3/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;-><init>(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;)V

    return-void
.end method

.method public static synthetic a(Landroid/util/Pair;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->m(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/util/Pair;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->l(Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;-><init>()V

    return-object v0
.end method

.method private static synthetic l(Landroid/util/Pair;)Z
    .locals 0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic m(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->a:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->h:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->b:I

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->d:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lo3/b;->a:Lo3/b;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lo3/a;->a:Lo3/a;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
