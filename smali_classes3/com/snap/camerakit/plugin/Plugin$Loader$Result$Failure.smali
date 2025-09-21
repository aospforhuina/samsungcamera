.class public abstract Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;
.super Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingInstallation;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingImplementation;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingSignature;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnknownSignature;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedVersion;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingPermissions;
    }
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result;-><init>(Lkotlin/jvm/internal/g;)V

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;->message:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
