.class Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecAiHighResNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->access$002(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;Lcom/samsung/android/camera/core2/util/ImgFormat;)Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/util/ImgFormat;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->access$100(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    sget-object p2, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->access$202(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;Lcom/samsung/android/camera/core2/util/ImgFormat;)Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->access$300(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NATIVE_CALLBACK_OUTPUT_TYPE_INFO: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->a:Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->access$400(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;->b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
