.class public Lcom/samsung/android/camera/core2/node/ConverterNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "ConverterNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;,
        Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mInputPortTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/Node$PortType;",
            "Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

.field private final mOutputPortTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/Node$PortType;",
            "Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "ConverterNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0x118

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mInputPortTypeMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mOutputPortTypeMap:Ljava/util/Map;

    const-string v0, "callback"

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    new-instance v0, Lcom/samsung/android/camera/core2/node/ConverterNode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$1;-><init>(Lcom/samsung/android/camera/core2/node/ConverterNode;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->e(Lcom/samsung/android/camera/core2/node/Node$CoreInterface;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b(Lcom/samsung/android/camera/core2/node/Node$OutputPort;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    new-instance v1, Lcom/samsung/android/camera/core2/node/ConverterNode$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$2;-><init>(Lcom/samsung/android/camera/core2/node/ConverterNode;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->e(Lcom/samsung/android/camera/core2/node/Node$CoreInterface;)V

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b(Lcom/samsung/android/camera/core2/node/Node$OutputPort;)V

    return-void
.end method


# virtual methods
.method protected processConvert(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 7

    .line 17
    sget-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processConvert"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mInputPortTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string p2, "processConvert fail - can\'t find converterConfiguration for %s"

    .line 19
    invoke-static {v0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    .line 21
    :cond_0
    const-class v2, Lcom/samsung/android/camera/core2/util/ImageFile;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/Node$PortType;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->a(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/camera/core2/util/ImageFile;

    if-nez v2, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->a(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v3

    const-class p2, Lcom/samsung/android/camera/core2/util/ImageFile;

    aput-object p2, p1, v4

    const-string p2, "processConvert fail - outputObj(%s) is not compatible with %s"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    .line 25
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->a(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/ImageFile;

    .line 26
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->d(Lcom/samsung/android/camera/core2/util/ImageFile;)V

    .line 27
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->getOutputPort(Lcom/samsung/android/camera/core2/node/Node$PortType;)Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processConvert fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node$PortType;->a()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "processConvert fail - converting to %s is not supported yet"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5
.end method

.method protected processConvert(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processConvert"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mInputPortTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string p2, "processConvert fail - can\'t find converterConfiguration for %s"

    .line 3
    invoke-static {v0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    .line 5
    :cond_0
    const-class v2, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/Node$PortType;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    const-string p1, "processConvert fail - picture file size(%d) is invalid"

    new-array p2, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    :cond_1
    long-to-int v0, v6

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageFile;->a()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Ljava/io/File;)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 12
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->getOutputPort(Lcom/samsung/android/camera/core2/node/Node$PortType;)Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 13
    sget-object p2, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processConvert fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node$PortType;->a()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "processConvert fail - converting to %s is not supported yet"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;->onError()V

    return-object v5
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public setOutputObj(Lcom/samsung/android/camera/core2/node/Node$PortType;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/node/Node$PortType<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string/jumbo v4, "setOutputObj - outputType %s, outputObj %s"

    invoke-static {v0, v4, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "outputType"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "outputObj"

    .line 3
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mOutputPortTypeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->c(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string/jumbo p1, "setOutputObj fail - can\'t find outputConfiguration for %s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPortType(Lcom/samsung/android/camera/core2/node/Node$PortType;Lcom/samsung/android/camera/core2/node/Node$PortType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/node/Node$PortType;",
            "Lcom/samsung/android/camera/core2/node/Node$PortType<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/ConverterNode;->CONVERTER_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo v2, "setPortType - inputType %s, outputType %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "inputType"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "outputType"

    .line 3
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;-><init>(Lcom/samsung/android/camera/core2/node/Node$PortType;Lcom/samsung/android/camera/core2/node/b;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mInputPortTypeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode;->mOutputPortTypeMap:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
