.class Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;
.super Ljava/lang/Object;
.source "STPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/STPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "STFrameCountInfo"
.end annotation


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->b:I

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "addSTFrameCount - currentFrameCount: %d, totalFrameCount: %d"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->b:I

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->a:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1
.end method
