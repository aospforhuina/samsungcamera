.class public Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;
.super Ljava/lang/Object;
.source "SceneDetectionNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneDetectionInitParam"
.end annotation


# instance fields
.field public a:Landroid/util/Size;

.field public b:Lcom/samsung/android/camera/core2/CamCapability;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->c:Landroid/content/Context;

    return-void
.end method
