.class Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature$1;
.super Ljava/util/HashMap;
.source "PortraitVideoFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature;->getMediaRecorderProfile(I)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature$1;->this$0:Lcom/sec/android/app/camera/shootingmode/feature/PortraitVideoFeature;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x18

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "recordingMode"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
