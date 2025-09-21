.class public final Lt0/a;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lx/f;


# static fields
.field private static final b:Lt0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt0/a;

    invoke-direct {v0}, Lt0/a;-><init>()V

    sput-object v0, Lt0/a;->b:Lt0/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lt0/a;
    .locals 1

    sget-object v0, Lt0/a;->b:Lt0/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptySignature"

    return-object p0
.end method
