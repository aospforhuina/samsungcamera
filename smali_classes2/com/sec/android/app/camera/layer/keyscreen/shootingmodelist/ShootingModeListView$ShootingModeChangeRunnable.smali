.class Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;
.super Ljava/lang/Object;
.source "ShootingModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeChangeRunnable"
.end annotation


# instance fields
.field private mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private mRunning:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/o0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->mRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->mRunning:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->V(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_0
    return-void
.end method

.method public setCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeChangeRunnable;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method
