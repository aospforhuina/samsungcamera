.class public Lm0/g;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lm0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm0/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lm0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/g;

    invoke-direct {v0}, Lm0/g;-><init>()V

    sput-object v0, Lm0/g;->a:Lm0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lm0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lm0/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lm0/g;->a:Lm0/g;

    return-object v0
.end method


# virtual methods
.method public a(La0/v;Lx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TZ;>;",
            "Lx/i;",
            ")",
            "La0/v<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
