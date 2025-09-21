.class public final Lg0/c;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lx/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx/m<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Lx/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/c;

    invoke-direct {v0}, Lg0/c;-><init>()V

    sput-object v0, Lg0/c;->b:Lx/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lg0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lg0/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lg0/c;->b:Lx/m;

    check-cast v0, Lg0/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;La0/v;II)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La0/v<",
            "TT;>;II)",
            "La0/v<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method
