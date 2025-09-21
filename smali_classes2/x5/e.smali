.class public Lx5/e;
.super Ljava/lang/Object;
.source "ResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/e$b;,
        Lx5/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lx5/e;->c()Ljava/util/EnumMap;

    move-result-object v0

    sput-object v0, Lx5/e;->a:Ljava/util/EnumMap;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 3
    sget-object v2, Lx5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx5/e$b;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    return-object v0

    .line 6
    :cond_2
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string v0, "Cannot find resource IDs"

    invoke-direct {p0, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/e$b;
    .locals 3

    .line 1
    sget-object v0, Lx5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx5/e$b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c()Ljava/util/EnumMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080485

    const v4, 0x7f120426

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SWITCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v6, 0x7f080457

    const v7, 0x7f1205a7

    invoke-direct {v2, v6, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v6, 0x7f1200f4

    invoke-direct {v2, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SKIN_TONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f080422

    const v8, 0x7f1201d5

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f0804b3

    const v8, 0x7f1201cc

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SKIN_COLOR:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f080421

    const v8, 0x7f1201d4

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SLIM_FACE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f0804b4

    const v8, 0x7f1201ce

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f0804b5

    const v8, 0x7f1201d6

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f0804b6

    const v8, 0x7f1201cb

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f1205bf

    invoke-direct {v2, v5, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f1201d1

    const v9, 0x7f1201d0

    invoke-direct {v2, v5, v8, v9}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_SMART:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v10, 0x7f1201ca

    const v11, 0x7f1201c9

    invoke-direct {v2, v5, v10, v11}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v10, 0x7f1201d3

    const v12, 0x7f1201d2

    invoke-direct {v2, v5, v10, v12}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lu3/b;->d0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v7, v11}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v13, 0x7f080424

    const v14, 0x7f1205e3

    invoke-direct {v2, v13, v14, v9}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v13, 0x7f080425

    const v14, 0x7f1205e4

    invoke-direct {v2, v13, v14, v12}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    sget-object v1, Lu3/b;->z0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const v2, 0x7f1201df

    if-eqz v1, :cond_1

    .line 20
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f1201e4

    invoke-direct {v13, v5, v8, v14}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f1201e5

    invoke-direct {v13, v5, v10, v14}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bd

    const v15, 0x7f1201e8

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b7

    const v15, 0x7f1201e0

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bb

    const v15, 0x7f1201e6

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bc

    const v15, 0x7f1201e7

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b8

    const v15, 0x7f1201e1

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804ba

    const v15, 0x7f1201e3

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b9

    const v15, 0x7f1201e2

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f1201e4

    invoke-direct {v13, v5, v8, v14}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f1201e5

    invoke-direct {v13, v5, v10, v14}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bd

    const v15, 0x7f1201e8

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HEAD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b7

    const v15, 0x7f1201e0

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bb

    const v15, 0x7f1201e6

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WAIST:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804bc

    const v15, 0x7f1201e7

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HIPS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b8

    const v15, 0x7f1201e1

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804ba

    const v15, 0x7f1201e3

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0804b9

    const v15, 0x7f1201e2

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    invoke-direct {v13, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v14, 0x7f0806bb

    const v15, 0x7f1201cd

    invoke-direct {v13, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v13, Lx5/e$b;

    const v3, 0x7f1202aa

    invoke-direct {v13, v14, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    invoke-direct {v3, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    invoke-direct {v3, v14, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    invoke-direct {v3, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    const v13, 0x7f1202aa

    invoke-direct {v3, v14, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    invoke-direct {v3, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    invoke-direct {v3, v14, v2, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f1202aa

    invoke-direct {v2, v14, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v14, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v14, v15, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SKIN_TONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080422

    const v6, 0x7f1201d5

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804b3

    const v6, 0x7f1201cc

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SKIN_COLOR:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080421

    const v6, 0x7f1201d4

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804b4

    const v6, 0x7f1201ce

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804b5

    const v6, 0x7f1201d6

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804b6

    const v6, 0x7f1201cb

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v8, v9}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_SMART:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f1201ca

    invoke-direct {v2, v5, v3, v11}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v10, v12}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lu3/b;->D1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v7, v11}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080424

    const v6, 0x7f1205e3

    invoke-direct {v2, v3, v6, v9}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080425

    const v6, 0x7f1205e4

    invoke-direct {v2, v3, v6, v12}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080677

    const v6, 0x7f1201ec

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_BIG_BOKEH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f080673

    const v8, 0x7f1201eb

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_BACKDROP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v9, 0x7f08066f

    const v10, 0x7f1201ea

    invoke-direct {v2, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lu3/b;->E0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const v9, 0x7f08067f

    const v10, 0x7f1201ed

    if-nez v2, :cond_4

    sget-object v2, Lu3/b;->F0:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 77
    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_4
    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08067b

    invoke-direct {v11, v12, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080687

    const v13, 0x7f1201ef

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08068b

    const v13, 0x7f1201f0

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_STUDIO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080693

    const v13, 0x7f1201f2

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_SPIN_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08068f

    const v13, 0x7f1201f1

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_ZOOM_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080697

    const v13, 0x7f1201f3

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_BIG_BOKEH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_BACKDROP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08066f

    const v13, 0x7f1201ea

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lu3/b;->F0:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 89
    :cond_5
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 90
    :cond_6
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08067b

    invoke-direct {v11, v12, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_3
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080687

    const v13, 0x7f1201ef

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08068b

    const v13, 0x7f1201f0

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_STUDIO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080693

    const v13, 0x7f1201f2

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_SPIN_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08068f

    const v13, 0x7f1201f1

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_ZOOM_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f080697

    const v13, 0x7f1201f3

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_BIG_BOKEH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    invoke-direct {v11, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_BACKDROP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/e$b;

    const v12, 0x7f08066f

    const v13, 0x7f1201ea

    invoke-direct {v11, v12, v13, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lu3/b;->F0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 101
    :cond_7
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 102
    :cond_8
    :goto_4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f08067b

    invoke-direct {v2, v11, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f080687

    const v12, 0x7f1201ef

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f08068b

    const v12, 0x7f1201f0

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_STUDIO_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f080693

    const v12, 0x7f1201f2

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_SPIN_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f08068f

    const v12, 0x7f1201f1

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_ZOOM_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f080697

    const v12, 0x7f1201f3

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v11, 0x7f080683

    const v12, 0x7f1201ee

    invoke-direct {v2, v11, v12, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_LENS_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v10, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f080683

    const v8, 0x7f1201ee

    invoke-direct {v2, v7, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_LENS_EFFECT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const/4 v9, 0x0

    const v10, 0x7f1200c6

    const v11, 0x7f1200b3

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, v1

    invoke-direct/range {v7 .. v12}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f080636

    const v19, 0x7f1200c4

    const v20, 0x7f1200c5

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080633

    const v9, 0x7f1200c2

    const v10, 0x7f1200c3

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FUN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f080610

    const v19, 0x7f1200bb

    const v20, 0x7f1200c3

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08063d

    const v9, 0x7f1200c9

    const v10, 0x7f1200cd

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_LITE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f08063d

    const v19, 0x7f1200c9

    const v20, 0x7f1200ca

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080653

    const v9, 0x7f1200d3

    const v10, 0x7f1200d4

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f08060f

    const v19, 0x7f1200b9

    const v20, 0x7f1200ba

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080611

    const v9, 0x7f1200bc

    const v10, 0x7f1200bd

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PORTRAIT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f08061a

    const v19, 0x7f1200c7

    const v20, 0x7f1200bf

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_BOKEH_PORTRAIT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/e$b;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080667

    const v9, 0x7f1200d6

    const v10, 0x7f1200d5

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const/16 v18, 0x0

    const v19, 0x7f1200d7

    const v20, 0x7f1200d8

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PORTRAIT_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08061b

    const v9, 0x7f1200c8

    const v10, 0x7f1200be

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v19, 0x7f1203cf

    const v20, 0x7f1203cf

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080609

    const v9, 0x7f1200b4

    const v10, 0x7f1200b5

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f080652

    const v19, 0x7f1200d1

    const v20, 0x7f1200d2

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080652

    const v9, 0x7f1200d1

    const v10, 0x7f1200d2

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f08063e

    const v19, 0x7f1200cb

    const v20, 0x7f1200cc

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_LITE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08063e

    const v9, 0x7f1200cb

    const v10, 0x7f1200cc

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MACRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v18, 0x7f08061f

    const v19, 0x7f1200c0

    const v20, 0x7f1200c1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080609

    const v9, 0x7f1200b6

    const v10, 0x7f1200b7

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const/16 v18, 0x0

    const v19, 0x7f1200ce

    const v20, 0x7f1200ce

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v21}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_EXPERT_RAW:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08060d

    const v9, 0x7f1200b8

    const v10, 0x7f1200b8

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FILTER:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FILTER_NONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f12042c

    invoke-direct {v2, v5, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804d7

    const v6, 0x7f120266

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f0804d6

    const v6, 0x7f120239

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f120625

    invoke-direct {v2, v5, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v6, 0x7f120677

    invoke-direct {v2, v5, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v7, 0x7f1205b3

    invoke-direct {v2, v5, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SECOND_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12050e

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v5, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_5:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120155

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_6:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120156

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120157

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X2:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015b

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X3:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015d

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X4:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015f

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X5:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120160

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X6:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120162

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X8:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120163

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120158

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X12:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015a

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015c

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12015e

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X50:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120161

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X100:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f120159

    invoke-direct {v2, v5, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_BOKEH_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080485

    invoke-direct {v2, v8, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_BOKEH_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v8, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f120590

    .line 170
    sget-object v2, Lu3/b;->D0:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lu3/b;->b0:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-nez v2, :cond_9

    move v1, v7

    .line 171
    :cond_9
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_BOKEH_LENS_TYPE_NORMAL_X2:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/e$b;

    const v9, 0x7f080485

    invoke-direct {v8, v9, v1, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_BOKEH_LENS_TYPE_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_BOKEH_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_BOKEH_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_BOKEH_LENS_TYPE_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_NIGHT_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_NIGHT_LENS_TYPE_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_NIGHT_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_SECOND_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f12050e

    invoke-direct {v2, v9, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v8, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v9, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08089d

    const v9, 0x7f120676

    invoke-direct {v2, v8, v9, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08089c

    const v9, 0x7f12041c

    invoke-direct {v2, v8, v9, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080485

    invoke-direct {v2, v8, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_LENS_TYPE_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08089d

    invoke-direct {v2, v8, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_LENS_TYPE_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f08089c

    invoke-direct {v2, v8, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->ACTION_BAR_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v8, 0x7f080485

    invoke-direct {v2, v8, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->ACTION_BAR_BIXBY_VISION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v9, 0x7f1201d8

    const v10, 0x7f1201d7

    invoke-direct {v2, v8, v9, v10}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->ACTION_BAR_AR_ZONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v9, 0x7f12019b

    const v10, 0x7f12019a

    invoke-direct {v2, v8, v9, v10}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    invoke-direct {v2, v8, v4, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v4, 0x7f080512

    invoke-direct {v2, v4, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080513

    invoke-direct {v2, v3, v6, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_TELE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f080511

    invoke-direct {v2, v3, v7, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_1:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f120257

    invoke-direct {v2, v5, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_2:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f120259

    invoke-direct {v2, v5, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_3:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/e$b;

    const v3, 0x7f120258

    invoke-direct {v2, v5, v3, v5}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
