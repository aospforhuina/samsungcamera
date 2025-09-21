.class public Le0/v;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/v$a;,
        Le0/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le0/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Le0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le0/v;

    invoke-direct {v0}, Le0/v;-><init>()V

    sput-object v0, Le0/v;->a:Le0/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Le0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le0/v<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le0/v;->a:Le0/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Le0/n$a;

    new-instance p2, Lt0/b;

    invoke-direct {p2, p1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Le0/v$b;

    invoke-direct {p3, p1}, Le0/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object p0
.end method
