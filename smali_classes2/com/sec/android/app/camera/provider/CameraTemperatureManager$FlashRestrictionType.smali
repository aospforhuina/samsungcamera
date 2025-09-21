.class final enum Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;
.super Ljava/lang/Enum;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlashRestrictionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

.field public static final enum LOW_BATTERY:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

.field public static final enum NONE:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

.field public static final enum OTG_CONNECTED:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

.field public static final enum TOO_COLD:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

.field public static final enum TOO_HOT:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;


# instance fields
.field private final mFlashStringId:I

.field private final mFlashlightStringId:I

.field private final mSaLoggingId:Lcom/sec/android/app/camera/logging/SaLogEventId;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    sget-object v5, Lcom/sec/android/app/camera/logging/SaLogEventId;->SETTING_DIM_REASON_BATTERY:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const-string v1, "LOW_BATTERY"

    const/4 v2, 0x0

    const v3, 0x7f1202bb

    const v4, 0x7f1202bf

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;-><init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V

    sput-object v6, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->LOW_BATTERY:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    sget-object v12, Lcom/sec/android/app/camera/logging/SaLogEventId;->SETTING_DIM_REASON_OTG:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const-string v8, "OTG_CONNECTED"

    const/4 v9, 0x1

    const v10, 0x7f1202bc

    const v11, 0x7f1202c0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;-><init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->OTG_CONNECTED:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    sget-object v18, Lcom/sec/android/app/camera/logging/SaLogEventId;->SETTING_DIM_REASON_OVERHEATING:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const-string v14, "TOO_HOT"

    const/4 v15, 0x2

    const v16, 0x7f1202bd

    const v17, 0x7f1202c1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;-><init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V

    sput-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->TOO_HOT:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    sget-object v12, Lcom/sec/android/app/camera/logging/SaLogEventId;->SETTING_DIM_REASON_LOW_TEMPERATURE:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const-string v8, "TOO_COLD"

    const/4 v9, 0x3

    const v10, 0x7f1202be

    const v11, 0x7f1202c2

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;-><init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V

    sput-object v2, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->TOO_COLD:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    .line 5
    new-instance v3, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    const-string v14, "NONE"

    const/4 v15, 0x4

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;-><init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V

    sput-object v3, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->NONE:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->$VALUES:[Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sec/android/app/camera/logging/SaLogEventId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mFlashStringId:I

    .line 3
    iput p4, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mFlashlightStringId:I

    .line 4
    iput-object p5, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mSaLoggingId:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->$VALUES:[Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object v0
.end method


# virtual methods
.method public getSaLoggingId()Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mSaLoggingId:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public getStringId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mFlashlightStringId:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->mFlashStringId:I

    :goto_0
    return p0
.end method
