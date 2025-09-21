.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snap/camerakit/plugin/Plugin$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/snap/camerakit/plugin/Plugin$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $classLoader:Ljava/lang/ClassLoader;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;->$classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
    .locals 3

    const-class v0, Lcom/snap/camerakit/plugin/Plugin;

    iget-object v1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;->$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snap/camerakit/plugin/Plugin;

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;->$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/snap/camerakit/plugin/Plugin;->attach(Landroid/content/Context;)Lcom/snap/camerakit/plugin/Plugin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/snap/camerakit/plugin/Plugin;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;

    invoke-direct {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;-><init>(Lcom/snap/camerakit/plugin/Plugin;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;

    const-string p0, "CameraKit is not supported on this device"

    invoke-direct {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingImplementation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " implementation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingImplementation;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method
