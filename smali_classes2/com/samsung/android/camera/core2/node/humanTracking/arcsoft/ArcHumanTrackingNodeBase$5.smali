.class Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "ArcHumanTrackingNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "[B[",
        "Landroid/graphics/Rect;",
        "[",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;

    iget-boolean v1, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mIsFrTrackingActivated:Z

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mHumanInfo:[B

    .line 3
    iput-object p2, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mNormalizedFaces:[Landroid/graphics/Rect;

    .line 4
    iput-object p3, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mNormalizedBodies:[Landroid/graphics/Rect;

    .line 5
    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->access$000(Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mHumanInfo:[B

    array-length v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mNormalizedFaces:[Landroid/graphics/Rect;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->mNormalizedBodies:[Landroid/graphics/Rect;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "NATIVE_CALLBACK_HUMAN_TRACKING_DATA: mHumanInfo.length=%d, mNormalizedFaces.length=%d, mNormalizedBodies.length=%d"

    .line 7
    invoke-static {p1, p0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;->f(Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase;)Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$NodeCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$NodeCallback;->a([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, [Landroid/graphics/Rect;

    check-cast p3, [Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/ArcHumanTrackingNodeBase$5;->b([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    return-void
.end method
