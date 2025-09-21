.class public Lcom/samsung/android/rapidmomentengine/utils/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final a:Ljava/lang/String; = "Utility"

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rapidmomentengine/utils/Utility;->b:Ljava/lang/String;

    const-string v0, "rm_rapidmoments_jni_a"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a([BIIII)[B
    .locals 0

    if-ne p3, p1, :cond_0

    if-ne p4, p2, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/rapidmomentengine/utils/Utility;->a:Ljava/lang/String;

    const-string p2, "Resize image dimensions is same as input image dimensions"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/rapidmomentengine/utils/Utility;->resizeGrayImageBuffer([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method private static native resizeGrayImageBuffer([BIIII)[B
.end method
