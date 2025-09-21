.class Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;
.super Ljava/lang/Object;
.source "SceneDocumentScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneItem"
.end annotation


# instance fields
.field mEventId:Lcom/sec/android/app/camera/logging/SaLogEventId;

.field mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field mSummary:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/logging/SaLogEventId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->this$0:Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mTitle:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mSummary:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mEventId:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-void
.end method


# virtual methods
.method getEventId()Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mEventId:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity$SceneItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
