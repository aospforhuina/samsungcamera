.class Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "ArcSRNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b([BLjava/lang/Void;Ljava/lang/Void;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;->access$000(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SrDebugInfoNativeCallback: debugInfo size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    array-length p3, p1

    new-array p3, p3, [B

    invoke-static {p2, p3}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;->n(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;[B)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;->k(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;)[B

    move-result-object p0

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;->access$100(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "SrDebugInfoNativeCallback: debugInfo is null."

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->a:Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;->n(Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase;[B)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/superResolution/arcsoft/ArcSRNodeBase$9;->b([BLjava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
