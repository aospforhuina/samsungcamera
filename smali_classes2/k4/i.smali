.class public final enum Lk4/i;
.super Ljava/lang/Enum;
.source "OCRLanguage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk4/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk4/i;

.field public static final enum b:Lk4/i;

.field public static final enum c:Lk4/i;

.field public static final enum d:Lk4/i;

.field public static final enum f:Lk4/i;

.field public static final enum g:Lk4/i;

.field public static final enum k:Lk4/i;

.field public static final enum l:Lk4/i;

.field public static final enum m:Lk4/i;

.field private static final synthetic n:[Lk4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lk4/i;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk4/i;->a:Lk4/i;

    .line 2
    new-instance v1, Lk4/i;

    const-string v3, "ENGLISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk4/i;->b:Lk4/i;

    .line 3
    new-instance v3, Lk4/i;

    const-string v5, "FRENCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk4/i;->c:Lk4/i;

    .line 4
    new-instance v5, Lk4/i;

    const-string v7, "GERMAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lk4/i;->d:Lk4/i;

    .line 5
    new-instance v7, Lk4/i;

    const-string v9, "ITALIAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lk4/i;->f:Lk4/i;

    .line 6
    new-instance v9, Lk4/i;

    const-string v11, "SPANISH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lk4/i;->g:Lk4/i;

    .line 7
    new-instance v11, Lk4/i;

    const-string v13, "KOREAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lk4/i;->k:Lk4/i;

    .line 8
    new-instance v13, Lk4/i;

    const-string v15, "PORTUGUESE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lk4/i;->l:Lk4/i;

    .line 9
    new-instance v15, Lk4/i;

    const-string v14, "CHINESE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lk4/i;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lk4/i;->m:Lk4/i;

    const/16 v14, 0x9

    new-array v14, v14, [Lk4/i;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lk4/i;->n:[Lk4/i;

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

.method public static valueOf(Ljava/lang/String;)Lk4/i;
    .locals 1

    const-class v0, Lk4/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk4/i;

    return-object p0
.end method

.method public static values()[Lk4/i;
    .locals 1

    sget-object v0, Lk4/i;->n:[Lk4/i;

    invoke-virtual {v0}, [Lk4/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk4/i;

    return-object v0
.end method
