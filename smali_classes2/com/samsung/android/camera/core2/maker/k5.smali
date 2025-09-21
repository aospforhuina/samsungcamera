.class public final synthetic Lcom/samsung/android/camera/core2/maker/k5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/k5;->a:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/k5;->a:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;->getSupportedSceneMode()[I

    move-result-object p0

    return-object p0
.end method
