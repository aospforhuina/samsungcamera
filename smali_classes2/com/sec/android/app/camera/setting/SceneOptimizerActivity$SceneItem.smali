.class Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;
.super Ljava/lang/Object;
.source "SceneOptimizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneItem"
.end annotation


# instance fields
.field mEventId:Ljava/lang/String;

.field mEventSwitchId:Ljava/lang/String;

.field mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field mSummary:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mTitle:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mSummary:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mEventId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 8
    iput-object p3, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mTitle:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mSummary:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mEventId:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mEventSwitchId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method getEventSwitchId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mEventSwitchId:Ljava/lang/String;

    return-object p0
.end method

.method getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
