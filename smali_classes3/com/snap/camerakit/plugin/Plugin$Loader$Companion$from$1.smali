.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snap/camerakit/plugin/Plugin$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/snap/camerakit/plugin/Plugin$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $pluginApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic $pluginPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
    .locals 10

    iget-object v0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v3, v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    :cond_3
    :try_start_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v5

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "camera_kit_native_cache"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lj6/a;->b(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    iget-object v3, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->access$getTAINTED_CLASS_LOADERS$p()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    invoke-static {}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->access$getTAINTED_CLASS_LOADERS$p()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_5

    :try_start_2
    const-string v8, "com.snap.camerakit.Session"

    invoke-virtual {v3, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move v4, v5

    :goto_3
    :try_start_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_5
    invoke-static {}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->access$getTAINTED_CLASS_LOADERS$p()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host application unexpectedly includes ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.snap.camerakit.Session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "which must be loaded from the Plugin package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$pluginPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lj6/b;->c(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to patch provided context ClassLoader with dex path: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] and native path: ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loader"

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    new-instance p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;

    const-string v0, "CameraKit Plugin libraries cannot be loaded on this device"

    invoke-direct {p0, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    instance-of v1, v1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_8

    new-instance v1, Lj6/c;

    new-instance v2, Lj6/e;

    iget-object v4, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v4}, Lj6/e;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v1, v2, p0}, Lj6/c;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_5

    :cond_8
    new-instance v1, Lj6/e;

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;->$context:Landroid/content/Context;

    invoke-direct {v1, v0, v3, p0}, Lj6/e;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/Context;)V

    :goto_5
    sget-object p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->$$INSTANCE:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {p0, v1, v3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    invoke-interface {p0}, Lcom/snap/camerakit/plugin/Plugin$Loader;->load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;

    move-result-object p0

    :goto_6
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraKit Plugin native libraries cannot be loaded due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
