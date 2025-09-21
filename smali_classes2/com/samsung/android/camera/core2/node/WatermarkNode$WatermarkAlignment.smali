.class abstract Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;
.super Ljava/lang/Object;
.source "WatermarkNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/WatermarkNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WatermarkAlignment"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final f:I

.field protected final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/WatermarkNode$ImageOrientation;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->g:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 6
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 7
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->a()I

    move-result v2

    and-int/lit8 v3, v2, -0x2

    .line 8
    iput v3, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->a:I

    .line 9
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->b:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v2

    and-int/lit8 p1, p1, -0x2

    .line 10
    iput p1, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->c:I

    .line 11
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->b()I

    move-result p1

    and-int/lit8 p2, p1, -0x2

    .line 12
    iput p2, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->d:I

    .line 13
    div-int/lit8 p2, v0, 0x2

    div-int/lit8 p3, v1, 0x2

    sub-int/2addr p2, p3

    and-int/lit8 p2, p2, -0x2

    iput p2, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->e:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    and-int/lit8 p1, v0, -0x2

    .line 14
    iput p1, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->f:I

    return-void
.end method

.method public static b(Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/WatermarkNode$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentLeft;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentLeft;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentRight;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentRight;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentCenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentCenter;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V

    return-object p0

    .line 5
    :cond_2
    new-instance p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentLeft;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/WatermarkNode$AlignmentLeft;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V

    return-object p0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkAlignment;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/WatermarkNode$ImageOrientation;->h(I)Lcom/samsung/android/camera/core2/node/WatermarkNode$ImageOrientation;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method
