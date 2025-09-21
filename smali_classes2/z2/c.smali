.class public final enum Lz2/c;
.super Ljava/lang/Enum;
.source "IoTResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz2/c;

.field public static final enum b:Lz2/c;

.field public static final enum c:Lz2/c;

.field public static final enum d:Lz2/c;

.field public static final enum f:Lz2/c;

.field public static final enum g:Lz2/c;

.field public static final enum k:Lz2/c;

.field public static final enum l:Lz2/c;

.field public static final enum m:Lz2/c;

.field public static final enum n:Lz2/c;

.field private static final synthetic o:[Lz2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lz2/c;

    const-string v1, "ON_BOARDING_STANDARD_QR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz2/c;->a:Lz2/c;

    .line 2
    new-instance v1, Lz2/c;

    const-string v3, "SAMJIN_SENSOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz2/c;->b:Lz2/c;

    .line 3
    new-instance v3, Lz2/c;

    const-string v5, "SAMJIN_HUB_V3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz2/c;->c:Lz2/c;

    .line 4
    new-instance v5, Lz2/c;

    const-string v7, "ZIGBEE_V3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz2/c;->d:Lz2/c;

    .line 5
    new-instance v7, Lz2/c;

    const-string v9, "ZWAVE_V2_SPEC_OLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lz2/c;->f:Lz2/c;

    .line 6
    new-instance v9, Lz2/c;

    const-string v11, "ZWAVE_V2_SPEC_NEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lz2/c;->g:Lz2/c;

    .line 7
    new-instance v11, Lz2/c;

    const-string v13, "ST_Camera"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lz2/c;->k:Lz2/c;

    .line 8
    new-instance v13, Lz2/c;

    const-string v15, "SMART_TAG_QR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lz2/c;->l:Lz2/c;

    .line 9
    new-instance v15, Lz2/c;

    const-string v14, "APP_LINK_QR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lz2/c;->m:Lz2/c;

    .line 10
    new-instance v14, Lz2/c;

    const-string v12, "MATTER_QR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lz2/c;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lz2/c;->n:Lz2/c;

    const/16 v12, 0xa

    new-array v12, v12, [Lz2/c;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lz2/c;->o:[Lz2/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz2/c;
    .locals 1

    const-class v0, Lz2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz2/c;

    return-object p0
.end method

.method public static values()[Lz2/c;
    .locals 1

    sget-object v0, Lz2/c;->o:[Lz2/c;

    invoke-virtual {v0}, [Lz2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz2/c;

    return-object v0
.end method
