.class public Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;
.super Ljava/lang/Object;
.source "CamCapabilityContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamCapabilityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoStreamConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/util/Size;

.field private final b:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Range;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    .line 4
    iput p3, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->c:I

    .line 5
    iput p4, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    return-void
.end method

.method public static l([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 2
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x6

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;

    new-instance v3, Landroid/util/Size;

    aget v4, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Range;

    add-int/lit8 v5, v1, 0x2

    aget v5, p0, v5

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v1, 0x3

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    add-int/lit8 v6, v1, 0x5

    aget v6, p0, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;-><init>(Landroid/util/Size;Landroid/util/Range;II)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;)I
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public b()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a(Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    .line 2
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    .line 3
    invoke-virtual {v0, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->c:I

    iget v1, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->c:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    iget p1, p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public h()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->a:Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->b:Landroid/util/Range;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->c:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$VideoStreamConfig;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string/jumbo p0, "{size = %s, fps = %s, vdisRatio = %d, timeLimit = %d}"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
