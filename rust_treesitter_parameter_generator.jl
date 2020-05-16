strs = ["mut_pattern" "ref_pattern" "captured_pattern" "reference_pattern" "slice_pattern" "tuple_pattern" "or_pattern" "tuple_struct_pattern" "struct_pattern > field_pattern"]

bases = ["parameter" "closure_parameters"]

ident = "identifier"

final = []

for base ∈ bases
    string = base * " > " * ident * ","
    push!(final, string)
end

for base ∈ bases, str ∈ strs
    if str == "or_pattern"
        # string = base * " > "
        # for i ∈ 1:5
        #     string = string * str * " > "
        #     push!(final, string * ident * ",")
        # end
    else
        string = base * " > " * str * " > " * ident * ","
        push!(final, string)
    end
end

for base ∈ bases, str ∈ strs, str2 ∈ strs
    if str == "or_pattern"
        # string = base * " > "
        # aux = str2 * " > " * ident * ","
        # for i ∈ 1:5
        #     string = string * str * " > "
        #     push!(final, string * aux)
        # end
    elseif str2 == "or_pattern"
        string = base * " > " * str * " > "
        for i ∈ 1:5
            string = string * str2 * " > "
            push!(final, string * ident * ",")
        end
    else
        string = base * " > " * str * " > " * str2 * " > " * ident * ","
        push!(final, string)
    end
end

for base ∈ bases, str ∈ strs, str2 ∈ strs, str3 ∈ strs
    if str == "or_pattern"
        # string = base * " > "
        # aux = str2 * " > " * str3 * " > " * ident * ","
        # for i ∈ 1:5
        #     string = string * str * " > "
        #     push!(final, string * aux)
        # end
    elseif str2 == "or_pattern"
        string = base * " > " * str * " > "
        aux = str3 * " > " * ident * ","
        for i ∈ 1:5
            string = string * str2 * " > "
            push!(final, string * aux)
        end
    elseif str3 == "or_pattern"
        string = base * " > " * str * " > " * str2 * " > "
        for i ∈ 1:5
            string = string * str3 * " > "
            push!(final, string * ident * ",")
        end
    else
        string = base * " > " * str * " > " * str2 * " > " * str3 * " > " * ident * ","
        push!(final, string)
    end
end

# for base ∈ bases, str ∈ strs, str2 ∈ strs, str3 ∈ strs, str4 ∈ strs
#     if str == "or_pattern"
#         string = base * " > "
#         aux = str2 * " > " * str3 * " > " * str4 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str * " > "
#             push!(final, string * aux)
#         end
#     elseif str2 == "or_pattern"
#         string = base * " > " * str * " > "
#         aux = str3 * " > " * str4 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str2 * " > "
#             push!(final, string * aux)
#         end
#     elseif str3 == "or_pattern"
#         string = base * " > " * str * " > " * str2 * " > "
#         aux = str4 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str3 * " > "
#             push!(final, string * aux)
#         end
#     elseif str4 == "or_pattern"
#         string = base * " > " * str * " > " * str2 * " > " * str3 * " > "
#         aux = ident * ","
#         for i ∈ 1:5
#             string = string * str4 * " > "
#             push!(final, string * aux)
#         end
#     else
#         string = base * " > " * str * " > " * str2 * " > " * str3 * " > " * str4 * " > " * ident * ","
#         push!(final, string)
#     end
# end
#
# for base ∈ bases, str ∈ strs, str2 ∈ strs, str3 ∈ strs, str4 ∈ strs, str5 ∈ strs
#     if str == "or_pattern"
#         string = base * " > "
#         aux = str2 * " > " * str3 * " > " * str4 * " > " * str5 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str * " > "
#             push!(final, string * aux)
#         end
#     elseif str2 == "or_pattern"
#         string = base * " > " * str * " > "
#         aux = str3 * " > " * str4 * " > " * str5 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str2 * " > "
#             push!(final, string * aux)
#         end
#     elseif str3 == "or_pattern"
#         string = base * " > " * str * " > " * str2 * " > "
#         aux = str4 * " > " * str5 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str3 * " > "
#             push!(final, string * aux)
#         end
#     elseif str4 == "or_pattern"
#         string = base * " > " * str * " > " * str2 * " > " * str3 * " > "
#         aux = str5 * " > " * ident * ","
#         for i ∈ 1:5
#             string = string * str4 * " > "
#             push!(final, string * aux)
#         end
#     elseif str5 == "or_pattern"
#         string = base * " > " * str * " > " * str2 * " > " * str3 * " > " * str4 * " > "
#         aux = ident * ","
#         for i ∈ 1:5
#             string = string * str5 * " > "
#             push!(final, string * aux)
#         end
#     else
#         string = base * " > " * str * " > " * str2 * " > " * str3 * " > " * str4 * " > " * str5 * " > " * ident * ","
#         push!(final, string)
#     end
# end

sort!(final)

for f in final
    println(f)
end
