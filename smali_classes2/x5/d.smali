.class public Lx5/d;
.super Ljava/lang/Object;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/d$d;,
        Lx5/d$e;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lx5/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lx5/d;->f()Ljava/util/EnumMap;

    move-result-object v0

    sput-object v0, Lx5/d;->a:Ljava/util/EnumMap;

    .line 2
    new-instance v0, Lx5/d$a;

    invoke-direct {v0}, Lx5/d$a;-><init>()V

    sput-object v0, Lx5/d;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lx5/d$b;

    invoke-direct {v0}, Lx5/d$b;-><init>()V

    sput-object v0, Lx5/d;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;
    .locals 3

    .line 1
    sget-object v0, Lx5/d;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx5/d$d;

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

.method public static b(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Lx5/d$d;
    .locals 2

    .line 1
    sget-object v0, Lx5/d;->a:Ljava/util/EnumMap;

    if-nez p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lm5/f0;->b(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx5/d$d;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find resource ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " commandId="

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lm5/f0;->b(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",settingKey="

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",imageLevel="

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static c(IIIIIZ)I
    .locals 1

    .line 1
    rem-int/lit16 p4, p4, 0xb4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object p4, Lx5/d;->c:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    sget-object p2, Lx5/d;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static d(Z)Lx5/d$d;
    .locals 13

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lu3/l;->C0:Lu3/l;

    invoke-static {p0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_0
    sget-object p0, Lu3/b;->f0:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lu3/l;->z:Lu3/l;

    goto :goto_0

    :cond_1
    sget-object p0, Lu3/l;->x:Lu3/l;

    :goto_0
    invoke-static {p0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    .line 4
    sget-object v0, Lx5/d$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    move v2, v0

    move v9, v2

    goto :goto_3

    :pswitch_0
    const v0, 0x7f0806ca

    const/16 p0, 0x18

    goto :goto_2

    :pswitch_1
    const v0, 0x7f0806c9

    const/16 p0, 0x14

    goto :goto_2

    :pswitch_2
    const v0, 0x7f0806c7

    const/16 p0, 0xd

    goto :goto_2

    :pswitch_3
    const v0, 0x7f0806cc

    const/16 p0, 0x20

    goto :goto_2

    :pswitch_4
    const v0, 0x7f0806cb

    const/16 p0, 0x19

    goto :goto_2

    :pswitch_5
    const v0, 0x7f0806cf

    const/16 p0, 0x32

    goto :goto_2

    :pswitch_6
    const v0, 0x7f0806ce

    const/16 p0, 0x30

    goto :goto_2

    :pswitch_7
    const v0, 0x7f0806cd

    const/16 p0, 0x28

    goto :goto_2

    :pswitch_8
    const v0, 0x7f0806c8

    const/16 p0, 0xc8

    goto :goto_2

    :pswitch_9
    const v0, 0x7f0806c6

    const/16 p0, 0x6c

    goto :goto_2

    :pswitch_a
    const v0, 0x7f0806d0

    const/16 p0, 0x40

    :goto_2
    move v9, p0

    move v2, v0

    .line 5
    :goto_3
    new-instance p0, Lx5/d$d;

    const v3, 0x7f12008d

    const v4, 0x7f12008a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f1205e9

    const v8, 0x7f1205eb

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget-object v12, Lx5/d$e;->c:Lx5/d$e;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lx5/d$d;Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx5/d$d;->j()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lx5/d$d;->h()I

    move-result p1

    if-eqz p1, :cond_1

    rem-int/lit16 p2, p2, 0xb4

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lx5/d$d;->h()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lx5/d$d;->j()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static f()Ljava/util/EnumMap;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lx5/d$d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    sget-object v18, Lx5/d$e;->a:Lx5/d$e;

    const v3, 0x7f0806bc

    const v4, 0x7f1200f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    sget-object v19, Lx5/d$e;->b:Lx5/d$e;

    const v3, 0x7f0806b7

    const v5, 0x7f120006

    const/4 v7, 0x0

    const v8, 0x7f1205bf

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FLASH_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bc

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v3, 0x7f0806b7

    const v5, 0x7f120006

    const/4 v7, 0x0

    const v8, 0x7f1205bf

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TORCH_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bc

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_LIMITED_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RESIZABLE_BACK_LIMITED_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_QUICK_TAKE_RECORDING_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_QUICK_TAKE_TORCH_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v3, 0x7f0806b7

    const v5, 0x7f120078

    const/4 v7, 0x0

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_QUICK_TAKE_TORCH_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bc

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_TORCH_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v3, 0x7f0806b7

    const v5, 0x7f120078

    const/4 v7, 0x0

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_TORCH_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bc

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_LIMITED_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v3, 0x7f0806b7

    const v5, 0x7f120006

    const/4 v7, 0x0

    const v8, 0x7f1205bf

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d6

    const v4, 0x7f120123

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v7, 0x0

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TIMER_2S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200dd

    const v8, 0x7f1200dd

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TIMER_5S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200db

    const v8, 0x7f1200db

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_TIMER_10S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200dc

    const v8, 0x7f1200dc

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v7, 0x0

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200dd

    const v8, 0x7f1200dd

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200db

    const v8, 0x7f1200db

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f1200dc

    const v8, 0x7f1200dc

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d2

    const v4, 0x7f120108

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806d2

    const v11, 0x7f120108

    const v12, 0x7f120075

    const/4 v13, 0x0

    const v14, 0x7f1205df

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v2

    move-object/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120076

    const v14, 0x7f1205e0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120077

    const v14, 0x7f1205e1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c0

    const v4, 0x7f120112

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c0

    const v11, 0x7f120112

    const/high16 v12, 0x7f120000

    const v14, 0x7f1205f0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120082

    const v14, 0x7f1205f9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120086

    const v14, 0x7f1205fd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007f

    const v14, 0x7f1205f6

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120081

    const v14, 0x7f1205f8

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120085

    const v14, 0x7f1205fc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c1

    const/high16 v12, 0x7f120000

    const v14, 0x7f1205f0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120083

    const v14, 0x7f1205fa

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007d

    const v14, 0x7f1205f4

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007e

    const v14, 0x7f1205f5

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120080

    const v14, 0x7f1205f7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120084

    const v14, 0x7f1205fb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007a

    const v14, 0x7f1205f1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007c

    const v14, 0x7f1205f3

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806be

    const v4, 0x7f12013b

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_INFINITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f12060c

    const/4 v6, 0x0

    const v7, 0x7f1205db

    const v8, 0x7f1205dc

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_10MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    sget-object v20, Lx5/d$e;->d:Lx5/d$e;

    const v5, 0x7f100007

    const v8, 0x7f100004

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, v14

    move-object/from16 v13, v20

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_30MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x1e

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_60MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x3c

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_120MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x78

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_180MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0xb4

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPERLAPSE_DURATION_300MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x12c

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_ASTROGRAPHY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c1

    const v4, 0x7f120112

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_300X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c1

    const v11, 0x7f120112

    const v12, 0x7f12007b

    const/4 v13, 0x0

    const v14, 0x7f1205f2

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/high16 v12, 0x7f120000

    const v14, 0x7f1205f0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120083

    const v14, 0x7f1205fa

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007d

    const v14, 0x7f1205f4

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007e

    const v14, 0x7f1205f5

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120080

    const v14, 0x7f1205f7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120084

    const v14, 0x7f1205fb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007a

    const v14, 0x7f1205f1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12007c

    const v14, 0x7f1205f3

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806be

    const v4, 0x7f12013b

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_INFINITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f12060c

    const/4 v6, 0x0

    const v7, 0x7f1205db

    const v8, 0x7f1205dc

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_10MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const v5, 0x7f100007

    const v8, 0x7f100004

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, v14

    move-object/from16 v13, v20

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_30MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x1e

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_60MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x3c

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_120MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x78

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_180MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0xb4

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPERLAPSE_DURATION_300MIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const/16 v10, 0x12c

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d3

    const v4, 0x7f1205be

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f1205ff

    const v8, 0x7f1205e3

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lu3/h;->X:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 93
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d4

    const v4, 0x7f120120

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120597

    const/4 v6, 0x0

    const v7, 0x7f1205fe

    const v8, 0x7f120597

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120598

    const v8, 0x7f120598

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    const/16 v2, 0x320

    if-ne v1, v2, :cond_1

    .line 97
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d5

    const v4, 0x7f120120

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120598

    const/4 v6, 0x0

    const v7, 0x7f1205fe

    const v8, 0x7f120598

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120599

    const v8, 0x7f120599

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bd

    const v4, 0x7f1202cd

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FOOD_BLUR_EFFECT_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f1205d8

    const v8, 0x7f1205e3

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FOOD_BLUR_EFFECT_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FOOD_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f08054c

    const v4, 0x7f1200ef

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v14, Lx5/d$d;

    const v3, 0x7f0806d1

    const v4, 0x7f12008d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v32, Lx5/d$e;->c:Lx5/d$e;

    move-object v2, v14

    move-object/from16 v13, v32

    invoke-direct/range {v2 .. v13}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v21, 0x7f0806d1

    const v22, 0x7f12008d

    const v23, 0x7f12008b

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x7f1205e8

    const v27, 0x7f1205ea

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lu3/b;->c0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 110
    invoke-static {v1}, Lx5/d;->d(Z)Lx5/d$d;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_HIGH_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/d$d;

    invoke-virtual {v1}, Lx5/e$b;->c()I

    move-result v21

    const v22, 0x7f12008d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v3

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lu3/b;->f0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_ULTRA_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v21, 0x7f0806c8

    const v22, 0x7f12008d

    const v23, 0x7f12008a

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x7f1205e9

    const v27, 0x7f1205eb

    const/16 v28, 0xc8

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    sget-object v1, Lu3/b;->g0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    new-instance v1, Lx5/d$d;

    const v21, 0x7f0806cf

    const v22, 0x7f12008d

    const v23, 0x7f12008a

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x7f1205e9

    const v27, 0x7f1205eb

    const/16 v28, 0x32

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v1

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    .line 117
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_PICTURE_RATIO_WITH_HIGH_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/d$d;

    invoke-virtual {v1}, Lx5/e$b;->c()I

    move-result v21

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_PICTURE_RATIO_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v21, 0x7f0806d1

    const v22, 0x7f12008d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008b

    const v26, 0x7f1205e8

    const v27, 0x7f1205ea

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu3/b;->B1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 125
    invoke-static {v1}, Lx5/d;->d(Z)Lx5/d$d;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_HIGH_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v3, Lx5/d$d;

    invoke-virtual {v1}, Lx5/e$b;->c()I

    move-result v21

    const v22, 0x7f12008d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v3

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v21, 0x7f0806b8

    const v22, 0x7f12008d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move-object/from16 v31, v32

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806b9

    const v4, 0x7f120127

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806b9

    const v11, 0x7f120127

    const v12, 0x7f120643

    const/4 v13, 0x0

    const v14, 0x7f1205c8

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v2

    move-object/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v14, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v14, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const v14, 0x7f1205c8

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v14, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v14, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const/4 v14, 0x0

    const v15, 0x7f1205c8

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v15, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v15, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v15, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v15, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v15, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v15, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v15, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v15, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v15, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v15, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_QHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064a

    const v15, 0x7f12064a

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_QHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064b

    const v15, 0x7f12064b

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const v14, 0x7f1205c8

    const/4 v15, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v14, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v14, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_FUN_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    move-object/from16 v20, v2

    move-object/from16 v25, v32

    invoke-direct/range {v20 .. v25}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const v14, 0x7f1205c8

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_FUN_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    move-object/from16 v20, v2

    move-object/from16 v25, v32

    invoke-direct/range {v20 .. v25}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const/4 v6, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const v14, 0x7f1205c8

    const/16 v16, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v14, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v14, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120643

    const v14, 0x7f1205c8

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120642

    const v14, 0x7f1205c7

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064e

    const v14, 0x7f1205d1

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064d

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f12064c

    const v14, 0x7f1205cf

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120648

    const v14, 0x7f1205cd

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120644

    const v14, 0x7f1205c9

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120647

    const v14, 0x7f1205cc

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120646

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120645

    const v14, 0x7f1205ca

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120649

    const v14, 0x7f1205ce

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120087

    const v26, 0x7f1205ec

    const v27, 0x7f1205e5

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_SQUARE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120088

    const v26, 0x7f1205e6

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_FULL:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f12008c

    const v26, 0x7f1205ef

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_CINEMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v23, 0x7f120089

    const v26, 0x7f1205ed

    const v27, 0x7f1205e7

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v31}, Lx5/d$d;-><init>(IIIIIIIIZZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bb

    const v4, 0x7f1200f4

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v4, 0x7f1201cd

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v4, 0x7f1200f4

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_SINGLE_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806d7

    const v4, 0x7f120121

    const/4 v6, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f120600

    const v8, 0x7f1205e3

    const/4 v9, 0x1

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806bf

    const v4, 0x7f12040b

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->HYPER_LAPSE_NIGHT_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v4, 0x7f12013a

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f1205da

    const v8, 0x7f1205e3

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->HYPER_LAPSE_NIGHT_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c2

    const v4, 0x7f120127

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c2

    const v11, 0x7f120127

    const v12, 0x7f120652

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120657

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120652

    const v14, 0x7f1205cb

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120657

    const v14, 0x7f1205d0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120652

    const/4 v7, 0x0

    const v8, 0x7f120652

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lu3/b;->j0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v3, 0x7f0806c2

    const v4, 0x7f120127

    const v5, 0x7f120657

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f120657

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c2

    const v4, 0x7f120002

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v5, 0x7f120652

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lu3/b;->F1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c2

    const v4, 0x7f120002

    const v5, 0x7f120657

    const/4 v6, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_6
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0805cc

    const v4, 0x7f120109

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PORTRAIT_VIDEO_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c2

    const v4, 0x7f120127

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PORTRAIT_VIDEO_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120652

    const/4 v7, 0x0

    const v8, 0x7f120652

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PORTRAIT_VIDEO_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120657

    const v8, 0x7f120657

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PORTRAIT_VIDEO_RESOLUTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v4, 0x7f120002

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PORTRAIT_VIDEO_RESOLUTION_FHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v5, 0x7f120652

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PORTRAIT_VIDEO_RESOLUTION_UHD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v5, 0x7f120657

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c3

    const v4, 0x7f12010a

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MOTION_PHOTO_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f1205e2

    const v8, 0x7f1205e3

    const/4 v9, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MOTION_PHOTO_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    const v8, 0x7f1205e4

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c4

    const v4, 0x7f120145

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v8

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_SINGLE_FILE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c4

    const v11, 0x7f120145

    const v12, 0x7f120071

    const/4 v13, 0x0

    const v14, 0x7f120071

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v2

    move-object/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MULTI_FILE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120070

    const v14, 0x7f120070

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_TYPE_SELECT_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806c5

    const v4, 0x7f12010b

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_TYPE_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806c5

    const v11, 0x7f12010b

    const v12, 0x7f120072

    const v14, 0x7f120072

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120074

    const v14, 0x7f120074

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120073

    const v14, 0x7f120073

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->DUAL_RECORDING_TYPE_TOGGLE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806ba

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->DUAL_RECORDING_TYPE_PIP:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v10, 0x7f0806ba

    const v12, 0x7f120072

    const v14, 0x7f120072

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->DUAL_RECORDING_TYPE_SPLIT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lx5/d$d;

    const v12, 0x7f120074

    const v14, 0x7f120074

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f0806e6

    const v4, 0x7f1200f0

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_MANUAL_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_MANUAL_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_MANUAL_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_TAKE_CUSTOMIZED_OPTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v8, Lx5/d$d;

    const v3, 0x7f080853

    const v4, 0x7f120618

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/d$d;-><init>(IIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_TAKE_CUSTOMIZED_OPTION_MENU_OFF:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120078

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_TAKE_CUSTOMIZED_OPTION_MENU_ON:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v11, Lx5/d$d;

    const v5, 0x7f120079

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lx5/d$d;-><init>(IIIIIIZLx5/d$e;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static g(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 0

    invoke-static {p0}, Lx5/d;->a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;

    move-result-object p0

    invoke-virtual {p0}, Lx5/d$d;->n()Z

    move-result p0

    return p0
.end method
