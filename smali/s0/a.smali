.class public Ls0/a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Ls0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls0/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Ls0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Ls0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls0/a;

    invoke-direct {v0}, Ls0/a;-><init>()V

    sput-object v0, Ls0/a;->a:Ls0/a;

    .line 2
    new-instance v0, Ls0/a$a;

    invoke-direct {v0}, Ls0/a$a;-><init>()V

    sput-object v0, Ls0/a;->b:Ls0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ls0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ls0/c<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Ls0/a;->b:Ls0/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls0/b$a;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
