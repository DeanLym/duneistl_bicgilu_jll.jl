# Autogenerated wrapper script for duneistl_bicgilu_julia_jll for x86_64-unknown-freebsd11.1
export libduneistl_bicgilu

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libduneistl_bicgilu`
const libduneistl_bicgilu_splitpath = ["lib", "libduneistl-julia.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libduneistl_bicgilu_path = ""

# libduneistl_bicgilu-specific global declaration
# This will be filled out by __init__()
libduneistl_bicgilu_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libduneistl_bicgilu = "libduneistl-julia.so"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    global libduneistl_bicgilu_path = normpath(joinpath(artifact_dir, libduneistl_bicgilu_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libduneistl_bicgilu_handle = dlopen(libduneistl_bicgilu_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libduneistl_bicgilu_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
