.class Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BurstCaptureData"
.end annotation


# static fields
.field private static final REPRESENTATIVE_ITEM:I


# instance fields
.field private mBurstCaptureGroupId:I

.field private mContentValues:Landroid/content/ContentValues;

.field private mIsSaved:Z

.field private mSecUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return p0
.end method

.method private clear()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    .line 3
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->clear()V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->setIsSaved(Z)V

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->setUri(Landroid/util/Pair;)V

    return-void
.end method

.method private setIsSaved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return-void
.end method

.method private setUri(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    return-void
.end method
