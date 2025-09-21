.class Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;
.super Ljava/lang/Object;
.source "HdrOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/HdrOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoHdrItem"
.end annotation


# instance fields
.field eventId:Ljava/lang/String;

.field key:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->key:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->title:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->summary:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->eventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->key:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->summary:Ljava/lang/String;

    return-object p0
.end method

.method getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->title:Ljava/lang/String;

    return-object p0
.end method
