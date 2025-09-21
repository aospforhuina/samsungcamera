.class public Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
.super Ljava/lang/Object;
.source "SemApexStoreData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemApexStoreData"


# instance fields
.field id:J

.field private latitude:J

.field private longitude:J

.field private path:Ljava/lang/String;

.field private rect:Landroid/graphics/Rect;

.field private rotation:I

.field private timestamp:J

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 4
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 5
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 8
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 13
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 14
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 15
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 17
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 22
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 23
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 24
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-wide/16 p1, 0x0

    .line 25
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 26
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    .line 27
    iput p7, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JILandroid/graphics/Rect;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 31
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 32
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-wide/16 p1, 0x0

    .line 34
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 35
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    .line 36
    iput p7, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 37
    iput-object p8, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JJJILandroid/graphics/Rect;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 40
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 41
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 42
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 43
    iput-wide p7, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 44
    iput-wide p9, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    .line 45
    iput p11, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 46
    iput-object p12, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->unflatten(Ljava/lang/String;)V

    return-void
.end method

.method public static createFrom(Landroid/os/Bundle;)Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string/jumbo v1, "token"

    const/4 v2, -0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "path"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "timestamp"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "latitude"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "longitude"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v1, "rotation"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v1, "rect"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 9
    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;JJJILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public static createFrom(Ljava/util/HashMap;)Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .locals 12

    .line 10
    sget-object v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id"

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "token"

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "path"

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v0, "timestamp"

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "rotation"

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v0, "rect"

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 17
    new-instance v9, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v10, 0x2

    aget v10, p0, v10

    const/4 v11, 0x3

    aget p0, p0, v11

    invoke-direct {v9, v0, v1, v10, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    new-instance p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;JILandroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rotation"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    const-string v2, "rect"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->flatten()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-wide v0
.end method

.method public getToken()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    return p0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    return-void
.end method

.method public setLocation(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    .line 2
    iput-wide p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-void
.end method

.method public setToken(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    const-string v2, "rotation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    const-string v2, "rect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    const-string p0, "longitude"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "id=%d, token=%d, timestamp=%d, path=%s, rotation=%d, rect=%s"

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    const-string/jumbo p1, "token"

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    const-string p1, "path"

    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    const-string/jumbo p1, "timestamp"

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    const-string p1, "rotation"

    .line 6
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    const-string p1, "rect"

    .line 7
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rect:Landroid/graphics/Rect;

    const-string p1, "latitude"

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->latitude:J

    const-string p1, "longitude"

    .line 9
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->longitude:J

    return-void
.end method
