.class Lcom/sec/android/app/camera/util/CameraResolution$ResolutionMapTag;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolutionMapTag"
.end annotation


# instance fields
.field final mBackResolutionMapTag:Lu3/i;

.field final mFrontResolutionMapTag:Lu3/i;


# direct methods
.method constructor <init>(Lu3/i;Lu3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraResolution$ResolutionMapTag;->mBackResolutionMapTag:Lu3/i;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/util/CameraResolution$ResolutionMapTag;->mFrontResolutionMapTag:Lu3/i;

    return-void
.end method


# virtual methods
.method public getBackResolutionMapTag()Lu3/i;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraResolution$ResolutionMapTag;->mBackResolutionMapTag:Lu3/i;

    return-object p0
.end method

.method public getFrontResolutionMapTag()Lu3/i;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraResolution$ResolutionMapTag;->mFrontResolutionMapTag:Lu3/i;

    return-object p0
.end method
